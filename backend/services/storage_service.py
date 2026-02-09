from services.supabase_client import supabase_admin
from PIL import Image
import io
import uuid

async def upload_detection_image(image_file, filename: str) -> str:
    print(f"DEBUG: Starting upload for {filename}")
    try:
        # Read image bytes
        await image_file.seek(0)
        image_bytes = await image_file.read()
        print(f"DEBUG: Read {len(image_bytes)} bytes")
        
        # Compress Image
        try:
            img = Image.open(io.BytesIO(image_bytes))
            print(f"DEBUG: Opened image {img.size} mode={img.mode}")
            
            # Convert RGBA to RGB if needed
            if img.mode in ('RGBA', 'P'):
                img = img.convert('RGB')
                
            # Resize if massive (e.g. > 1500px)
            max_size = 1500
            if max(img.size) > max_size:
                ratio = max_size / max(img.size)
                new_size = (int(img.width * ratio), int(img.height * ratio))
                img = img.resize(new_size, Image.Resampling.LANCZOS)
                print(f"DEBUG: Resized to {new_size}")
                
            # Compress to JPEG
            output_buffer = io.BytesIO()
            img.save(output_buffer, format='JPEG', quality=85, optimize=True)
            compressed_bytes = output_buffer.getvalue()
            print(f"DEBUG: Compressed to {len(compressed_bytes)} bytes")
            
            # Use compressed bytes
            image_bytes = compressed_bytes
            content_type = "image/jpeg" # Force JPEG after compression
            
        except Exception as e:
        # If strictly invalid image, fail here
            if "cannot identify image file" in str(e):
                raise ValueError("Invalid image file format. Please upload a valid JPG or PNG.")
                
            print(f"Compression failed: {e}")
            # Otherwise fall back to original (risky but maybe okay for some edge cases)
            content_type = getattr(image_file, "content_type", "image/jpeg")
        
        # Upload to Supabase Storage
        print(f"DEBUG: Uploading to Supabase bucket 'detection-images'")
        result = supabase_admin.storage.from_("detection-images").upload(
            filename,
            image_bytes,
            {"content-type": content_type}
        )
        print("DEBUG: Upload success")

        # Get public URL
        public_url = supabase_admin.storage.from_("detection-images").get_public_url(filename)
        return public_url

    except ValueError:
        raise # Re-raise known validation errors

    except Exception as e:
        # If bucket not found, retry...
        if "Bucket not found" in str(e) or "404" in str(e):
            print("Bucket 'detection-images' not found. Creating...")
            try:
                supabase_admin.storage.create_bucket("detection-images", options={"public": False})
                # Retry upload
                result = supabase_admin.storage.from_("detection-images").upload(
                    filename,
                    image_bytes,
                    {"content-type": "image/jpeg"}
                )
                public_url = supabase_admin.storage.from_("detection-images").get_public_url(filename)
                return public_url
            except Exception as create_err:
                print(f"Failed to create bucket: {create_err}")
                return None
        else:
            print(f"Error uploading image: {e}")
            import traceback
            traceback.print_exc()
            return None

async def create_thumbnail(image_bytes: bytes, size=(300, 300)) -> bytes:
    """Create thumbnail for faster loading"""
    img = Image.open(io.BytesIO(image_bytes))
    img.thumbnail(size)
    
    output = io.BytesIO()
    img.save(output, format='JPEG')
    return output.getvalue()
