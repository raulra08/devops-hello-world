import unittest
from unittest.mock import patch
from src.main import main

class TestMain(unittest.TestCase):
  def test_main(self):
    # Test that main function runs without any errors
    with patch('src.main.greet_the_world') as mock_greet:
      main()
      mock_greet.assert_called_once()

if __name__ == '__main__':
  unittest.main()