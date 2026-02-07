from fastapi import APIRouter, Request as FastAPIRequest
from fastapi.responses import JSONResponse
from typing import Any, Dict, Optional

class Router(APIRouter):
    pass

class Request(FastAPIRequest):
    pass

class Response(JSONResponse):
    def __init__(self, content: Any, status: int = 200):
        super().__init__(content=content, status_code=status)
