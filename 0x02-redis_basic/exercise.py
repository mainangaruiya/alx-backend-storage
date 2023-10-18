#!/usr/bin/env python3
"""
declare redis class and method"""
from typing import Union
import random 
import redis
class Cache:
	def __init__(self):
		self._redis = redis.Redis()
		self._redis.flushdb()
	def store(self,data:Union[str, bytes, int, float]) -> str:
		 key = str(uuid.uuid4())
        # Store the input data in Redis using the random key.
        if isinstance(data, (str, bytes)):
            self._redis.set(key, data)
        elif isinstance(data, (int, float)):
            self._redis.set(key, str(data))
        # Return the generated key.
        return key
if __name__ == "__main__":
    cache = Cache()

    data = b"hello"
    key = cache.store(data)
    print(key)

    local_redis = redis.Redis()
    print(local_redis.get(key))