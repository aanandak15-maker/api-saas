import asyncio
import aiohttp
import time
import os
from PIL import Image

API_URL = "http://localhost:8001"

async def test_health():
    async with aiohttp.ClientSession() as session:
        async with session.get(f"{API_URL}/") as resp:
            print(f"Health Check: {resp.status}")

async def get_test_key():
    """Create or get a key for testing"""
    print("Provisioning Test Client Key...")
    async with aiohttp.ClientSession() as session:
        # Create a client via signup
        unique = str(int(time.time()))
        payload = {
            "company_name": f"Stability Test {unique}",
            "email": f"test_{unique}@example.com",
            "business_type": "Tech",
            "phone": "555-0000"
        }
        async with session.post(f"{API_URL}/signup", json=payload) as resp:
            data = await resp.json()
            if resp.status == 201:
                return data["api_key"]
            else:
                print(f"Signup Failed: {data}")
                return None

async def stress_rate_limit(count=20, api_key=None):
    print(f"\n--- Testing Rate Limits ({count} reqs) ---")
    headers = {"X-API-Key": api_key} if api_key else {}
    
    async with aiohttp.ClientSession() as session:
        tasks = []
        start = time.time()
        for i in range(count):
            tasks.append(session.get(f"{API_URL}/detections", headers=headers)) # Authenticated Endpoint
        
        results = await asyncio.gather(*tasks)
        codes = [r.status for r in results]
        duration = time.time() - start
        
        print(f"Completed in {duration:.2f}s")
        print(f"Status Codes: {codes}")
        if 429 in codes:
            print("SUCCESS: Rate limit triggered!")
        elif 200 in codes:
             print("SUCCESS: Requests handled.")

async def upload_image(session, filepath, key_desc, api_key):
    url = f"{API_URL}/detect"
    headers = {"X-API-Key": api_key} 
    
    try:
        with open(filepath, 'rb') as f:
            data = aiohttp.FormData()
            data.add_field('image', f, filename=os.path.basename(filepath), content_type='image/jpeg')
            
            start = time.time()
            async with session.post(url, data=data, headers=headers) as resp:
                elapsed = time.time() - start
                result = await resp.text()
                print(f"[{os.path.basename(filepath)}] Status: {resp.status}, Time: {elapsed:.2f}s")
    except Exception as e:
        print(f"[{key_desc}] Failed: {e}")

async def test_concurrency_and_files(api_key):
    print("\n--- Testing Concurrency & Files ---")
    
    # Create dummy files
    if not os.path.exists("test_large.jpg"):
        # Create a valid JPEG header to avoid PIL errors
        img = Image.new('RGB', (3000, 3000), color = 'red')
        img.save('test_large.jpg')
    if not os.path.exists("test_small.jpg"):
        img = Image.new('RGB', (100, 100), color = 'blue')
        img.save('test_small.jpg')
        
    async with aiohttp.ClientSession() as session:
        tasks = [
            upload_image(session, "test_large.jpg", "Large File", api_key),
            upload_image(session, "test_small.jpg", "Small File", api_key),
            upload_image(session, "test_small.jpg", "Concurrent 1", api_key),
            upload_image(session, "test_small.jpg", "Concurrent 2", api_key),
        ]
        await asyncio.gather(*tasks)

    # Cleanup
    if os.path.exists("test_large.jpg"): os.remove("test_large.jpg")
    if os.path.exists("test_small.jpg"): os.remove("test_small.jpg")

async def main():
    print("Starting Stability Sweep...")
    await test_health()
    
    # Get Key
    api_key = await get_test_key()
    print(f"Using Key: {api_key}")
    
    await stress_rate_limit(20, api_key)
    await test_concurrency_and_files(api_key)
    print("\nSweep Complete.")

if __name__ == "__main__":
    asyncio.run(main())
