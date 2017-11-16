import unittest

from checkout import Register


class TestRegister(unittest.TestCase):

    def test_add_item(self):
        register = Register()
        register.add_item("orange", .50, 3)
        self.assertEqual(1.50, register.subtotal())
