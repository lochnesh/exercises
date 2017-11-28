import unittest

from checkout import Register


class TestRegister(unittest.TestCase):

    def setUp(self):
        self.register = Register()

    def add_items(self):
        self.register.add_item("orange", .50, 3)
        self.register.add_item("banana", .3, 2)

    def test_add_item(self):
        self.add_items()
        self.assertEqual(("orange", .50, 3), self.register.items[0])
        self.assertEqual(("banana", .3, 2), self.register.items[1])

    def test_subtotal(self):
        self.add_items()
        self.assertEqual(2.10, self.register.subtotal())

    def test_tax(self):
        self.add_items()
        self.assertEqual(.12, self.register.tax())

    def test_total(self):
        self.add_items()
        self.assertEqual(2.22, self.register.total())
