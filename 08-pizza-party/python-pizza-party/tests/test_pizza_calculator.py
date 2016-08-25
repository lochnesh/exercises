import unittest

from party import PizzaParty


class TestPizzaCalculator(unittest.TestCase):

    def test_party_setup(self):
        party = PizzaParty(8)
        self.assertEqual(8, party.pizzas)

    def test_pieces_per_person(self):
        party = PizzaParty(8)
        party.guests(4)
        self.assertEqual(2, party.pieces_per_person)

    def test_leftovers(self):
        party = PizzaParty(8)
        party.guests(4)
        self.assertEqual(0, party.leftovers)
