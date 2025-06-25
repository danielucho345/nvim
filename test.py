"""
Example Python file demonstrating neogen docstring generation.
Place cursor on function/class definition and use <Leader>nf to generate docstrings.
"""

import numpy as np
from typing import List, Dict, Optional, Union, Tuple
from pathlib import Path


# Example 1: Simple function - place cursor here and press <Leader>nf
def calculate_area(length: float, width: float) -> float:
    """[TODO:description]

    Args:
        length: [TODO:description]
        width: [TODO:description]

    Returns:
        [TODO:return]
    """
    return length * width


# Example 2: Function with multiple parameters and complex return type
def process_data(
    data: List[Dict[str, Union[int, str]]],
    threshold: float = 0.5,
    normalize: bool = True,
    output_path: Optional[Path] = None,
) -> Tuple[np.ndarray, Dict[str, float]]:
    processed = []
    stats = {"mean": 0.0, "std": 0.0, "count": 0}

    for item in data:
        if isinstance(item.get("value"), (int, float)):
            if item["value"] > threshold:
                processed.append(item["value"])

    if normalize and processed:
        processed = np.array(processed)
        processed = (processed - np.mean(processed)) / np.std(processed)
        stats["mean"] = float(np.mean(processed))
        stats["std"] = float(np.std(processed))
        stats["count"] = len(processed)

    if output_path:
        np.save(output_path, processed)

    return np.array(processed), stats


# Example 3: Function with exceptions
def divide_numbers(a: float, b: float) -> float:
    if b == 0:
        raise ValueError("Cannot divide by zero")
    return a / b


# Example 4: Function with *args and **kwargs
def flexible_function(*args, **kwargs) -> Dict[str, any]:
    result = {"args": args, "kwargs": kwargs}
    if "multiplier" in kwargs:
        result["scaled_args"] = [
            arg * kwargs["multiplier"] for arg in args if isinstance(arg, (int, float))
        ]
    return result


# Example 5: Class definition - place cursor here and press <Leader>nc
class DataProcessor:
    def __init__(self, name: str, config: Dict[str, any], debug: bool = False):
        self.name = name
        self.config = config
        self.debug = debug
        self._processed_count = 0

    def process_item(self, item: Dict[str, any]) -> Dict[str, any]:
        if self.debug:
            print(f"Processing item: {item}")

        processed = item.copy()
        processed["processed_by"] = self.name
        processed["timestamp"] = self._get_timestamp()
        self._processed_count += 1

        return processed

    def get_stats(self) -> Dict[str, Union[int, str]]:
        return {
            "name": self.name,
            "processed_count": self._processed_count,
            "status": "active" if self._processed_count > 0 else "inactive",
        }

    @staticmethod
    def validate_config(config: Dict[str, any]) -> bool:
        required_keys = ["input_format", "output_format"]
        return all(key in config for key in required_keys)

    @classmethod
    def from_file(cls, config_path: Path) -> "DataProcessor":
        import json

        with open(config_path) as f:
            config = json.load(f)
        return cls(
            name=config.get("name", "default"),
            config=config,
            debug=config.get("debug", False),
        )

    def _get_timestamp(self) -> str:
        from datetime import datetime

        return datetime.now().isoformat()


# Example 6: Async function
async def fetch_data(url: str, timeout: int = 30) -> Dict[str, any]:
    import aiohttp

    async with aiohttp.ClientSession() as session:
        async with session.get(url, timeout=timeout) as response:
            return await response.json()


# Example 7: Generator function
def number_generator(start: int, end: int, step: int = 1):
    current = start
    while current < end:
        yield current
        current += step


# Example 8: Property decorator
class Circle:
    def __init__(self, radius: float):
        self._radius = radius

    @property
    def radius(self) -> float:
        return self._radius

    @radius.setter
    def radius(self, value: float) -> None:
        if value < 0:
            raise ValueError("Radius cannot be negative")
        self._radius = value

    @property
    def area(self) -> float:
        return 3.14159 * self._radius**2


# How to use neogen:
# 1. Place cursor on any function/class definition line
# 2. Press <Leader>nf to generate docstring for functions
# 3. Press <Leader>nc to generate docstring for classes
# 4. Press <Leader>nt to generate type annotations


# Example of generated Google-style docstring (what neogen would create):
def example_with_docstring(
    data: List[str], multiplier: int = 2, reverse: bool = False
) -> List[str]:
    """[TODO:description]

    Args:
        data (List[str]): [TODO:parameter]
        multiplier (int, optional): [TODO:parameter]. Defaults to 2.
        reverse (bool, optional): [TODO:parameter]. Defaults to False.

    Returns:
        List[str]: [TODO:return]
    """
    result = [item * multiplier for item in data]
    return result[::-1] if reverse else result
