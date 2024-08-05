import unittest
from unittest.mock import patch
from src.main import main


# Note: this test case is to illustrate testing dependencies on other modules.
# The parts of an app that print to the stadard output, are the parts that interface the final user.
# User interfaces tipycally require a differnt kind of testing, commonly known as end-to-end testing.

class TestMain(unittest.TestCase):
  def test_main(self):
    with patch('src.main.greet_the_world') as mock_greet:
      main()
      mock_greet.assert_called_once()

if __name__ == '__main__':
  unittest.main()