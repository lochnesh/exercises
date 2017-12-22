import unittest

from checkout import Register


class TestRegister(unittest.TestCase):

    def setUp(self):
        self.sub1 = MySubscriber()
        self.sub2 = MySubscriber()
        self.register = Register(subscribers=[self.sub1,
                                              self.sub2])

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

    def test_register_keeps_list_of_subscribers(self):
        self.assertIn(self.sub1, self.register.subscribers)
        self.assertIn(self.sub2, self.register.subscribers)

    def test_register_notifies_subscribers(self):
        events = ['data', 'mo data']
        for e in events:
            self.register.notify(e)
        self.assertEqual(self.sub1.events, events)
        self.assertEqual(self.sub2.events, events)


class MySubscriber():

    def __init__(self):
        self.events = []

    def receive(self, event):
        self.events.append(event)
