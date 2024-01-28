"""Sub Import test.

Sub import to test ruff and pyright vehaibor.
"""
import datetime

import pandas as pd

a = 1
b = pd.DataFrame()


class Myclass:
    """Class to experiment the suggestions with Ruff LSP."""

    def __init__(self: "Myclass") -> None:
        """Create Myclass for ruff testing."""
        self.name = "myname"
        self.createdat = datetime.datetime.now()  # noqa: DTZ005
