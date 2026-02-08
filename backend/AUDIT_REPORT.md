# Pre-Production Audit Report

## 🚨 Critical Issues

### 1. Data Loss / Encryption Key Instability
*   **Severity**: **CRITICAL**
*   **File/Location**: `backend/services/key_management.py` (Lines 7-11)
*   **Issue**: Code generates a *random* `Fernet` key if `ENCRYPTION_KEY` is not found in environment variables.
    ```python
    if not ENCRYPTION_KEY:
        print("WARNING: ENCRYPTION_KEY not set. Generating temporary key...")
        ENCRYPTION_KEY = Fernet.generate_key()
    ```
*   **Impact**: If the backend restarts (e.g., deployment, crash), a new key is generated. **All previously encrypted API keys in the database become permanently undecryptable.** Users will effectively be locked out of their AI integrations.
*   **Fix Recommendation**:
    1.  Make `ENCRYPTION_KEY` **mandatory**.
    2.  Raise a `RuntimeError` and crash the app immediately on startup if it's missing. never fallback to a random key in production.

### 2. Silent Failure & Mock Data in Production
*   **Severity**: **CRITICAL**
*   **File/Location**: `backend/services/detection_service.py` (Lines 190-200)
*   **Issue**: The `detect_disease_from_image` function catches generic Exceptions and returns a **hardcoded mock response** ("Early Blight", 94.5% confidence) instead of an error.
    ```python
    except Exception as e:
        # ...
        return {
            "disease": "Early Blight",
            "confidence": 0.945,
            # ...
        }
    ```
*   **Impact**: If the AI service fails (quota, network, key issue), the system will lie to users, telling them their crops have "Early Blight" regardless of the actual image. This destroys trust and could cause real-world crop damage if users act on false positives.
*   **Fix Recommendation**:
    1.  Remove the mock fallback entirely in production code.
    2.  Return a `500 Internal Server Error` or a specific error code so the frontend can handle it gracefully (e.g., "Analysis failed, please try again").

## 🔴 High Severity Issues

### 3. Weak Default Admin Key
*   **Severity**: **HIGH**
*   **File/Location**: `backend/middleware/auth_middleware.py` (Line 138)
*   **Issue**: The `require_admin_key` middleware falls back to a weak default key if the env var is missing.
    ```python
    expected_key = os.environ.get("ADMIN_API_KEY", "admin-secret-key-123")
    ```
*   **Impact**: Attackers can easily guess this key and gain admin access (managing API keys, viewing billing stats).
*   **Fix Recommendation**: Remove the default value. Enforce `ADMIN_API_KEY` presence or default to `None` (blocking access if not set).

### 4. Broken Rate Limiting logic (Business Logic)
*   **Severity**: **HIGH**
*   **File/Location**: `backend/middleware/auth_middleware.py` (Line 80)
*   **Issue**: The middleware forces a hardcoded limit of **1000 calls/day** for everyone, completely ignoring the `plan_config.py` settings.
    ```python
    if calls_today >= 1000:
        return CorsResponse({"error": "Daily rate limit exceeded..."}, status=429)
    ```
*   **Impact**: Enterprise/Harvest tier users (who pay for "Unlimited" or 20k scans) will be blocked after 1000 calls. This is a denial of service for paying customers.
*   **Fix Recommendation**: Import `get_plan_config` inside the middleware, fetch the client's plan limits, and use the dynamic limit (or skip check if `-1`).

### 5. API Plan Bypass (Demo Feature Exposure)
*   **Severity**: **HIGH**
*   **File/Location**: `backend/routes/auth.py` (Line 430, `change_plan`)
*   **Issue**: The `/client/change-plan` endpoint allows any authenticated user to switch their plan to "Enterprise" or any other tier without any payment validation.
*   **Impact**: Users can upgrade themselves to the highest tier for free.
*   **Fix Recommendation**: Disable this endpoint in production or wrap it with a payment gateway verification (Stripe/PayPal) logic.

## 🟠 Medium Severity Issues

### 6. Loose CORS Configuration
*   **Severity**: **MEDIUM**
*   **File/Location**: `backend/main.py` (Line 12) & `backend/routes/admin.py` (Line 93)
*   **Issue**:
    *   `main.py`: Defaults to `localhost:3000`.
    *   `admin.py`: CSV export explicitly allows `*` (wildcard) or `ALLOWED_ORIGIN`.
*   **Fix Recommendation**: Standardize CORS. Set `ALLOWED_ORIGIN` to the actual production frontend domain (e.g., `https://app.agrisaas.com`). Remove wildcard allowing in `admin.py`.

### 7. Uncontrolled File Logging
*   **Severity**: **MEDIUM**
*   **File/Location**: `backend/services/detection_service.py` (Line 52)
*   **Issue**: Logs raw AI responses to `/tmp/gemini_debug.log` without rotation or size limits.
*   **Impact**: Can fill up disk space in long-running instances. Potential PII leak if images contain text.
*   **Fix Recommendation**: Use Python's standard `logging` module with a proper handler (Safe to stdout/stderr for container capture), or disable debug logging in production.

## 🟡 Low Severity Issues

### 8. Dependency Version Pinning
*   **Severity**: **LOW**
*   **File/Location**: `backend/requirements.txt`
*   **Issue**: Libraries are listed without versions (e.g., `fastapi`, `uvicorn`).
*   **Impact**: A future update to any library could break the application (e.g., Pydantic v2 vs v1 changes).
*   **Fix Recommendation**: Pin all versions (e.g., `fastapi==0.109.0`) using `pip freeze`.
