import unittest

from party import PizzaParty


class TestPizzaCalculator(unittest.TestCase):

    def test_party_invitations(self):
        party = PizzaParty().invite(8)
        self.assertEqual(8, party.people)

    def test_order_pizza(self):
        party = PizzaParty().order(2)
        self.assertEqual(16, party.slices)

    def test_per_person(self):
        party = PizzaParty().invite(8).order(2)
        self.assertEqual(2, party.pieces_per_person())

    def test_no_leftovers(self):
        party = PizzaParty().invite(8).order(2)
        self.assertEqual(0, party.leftovers())

    def test_some_leftovers(self):
        party = PizzaParty().invite(7).order(2)
        self.assertEqual(2, party.leftovers())
        self.assertEqual(2, party.pieces_per_person())
