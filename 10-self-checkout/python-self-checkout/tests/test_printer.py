import unittest

from checkout import Printer, Register


class TestPrinter(unittest.TestCase):

    def setUp(self):
        self.output = []

        def output_func(data):
            self.output.append(data)

        self.printer = Printer(output_func)

    def test_print_empty_register(self):
        self.printer.write_total(Register())
        self.assertEqual(self.output[0], 'Subtotal: $0.00')
        self.assertEqual(self.output[1], 'Tax: $0.00')
        self.assertEqual(self.output[2], 'Total: $0.00')
