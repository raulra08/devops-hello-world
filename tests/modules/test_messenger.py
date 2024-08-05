import pytest
from src.modules.messenger import greet_the_world

def test_greet_the_world():
    assert greet_the_world() == "Hello, World!"