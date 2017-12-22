import unittest

from checkout import Printer
from checkout.events import Totals
from collections import namedtuple


class TestPrinter(unittest.TestCase):

    def setUp(self):
        self.output = []

        def output_func(data):
            self.output.append(data)

        self.printer = Printer(output_func)

    def test_print_empty_register(self):
        totals = Totals(subtotal=5, tax=.02, total=5.02)
        self.printer.receive(totals)
        self.assertEqual(self.output[0], 'Subtotal: $5.00')
        self.assertEqual(self.output[1], 'Tax: $0.02')
        self.assertEqual(self.output[2], 'Total: $5.02')

    def test_print_handles_unknown_events(self):
        try:
            Wut = namedtuple('Wut', ['garbage'])
            self.printer.receive(Wut('stuff'))
        except Exception as ex:
            self.fail('receive raised {}'.format(ex))
