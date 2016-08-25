import unittest

from party import PizzaParty


class TestPizzaParty(unittest.TestCase):

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

    def test_order_more_pizza(self):
        party = PizzaParty().invite(8).order(2)
        self.assertEqual(0, party.leftovers())
        self.assertEqual(2, party.pieces_per_person())
        party.order(2)
        self.assertEqual(0, party.leftovers())
        self.assertEqual(4, party.pieces_per_person())

    def test_invite_more_people(self):
        party = PizzaParty().invite(7).order(2)
        self.assertEqual(2, party.leftovers())
        self.assertEqual(2, party.pieces_per_person())
        party.invite(9)
        self.assertEqual(0, party.leftovers())
        self.assertEqual(1, party.pieces_per_person())

    def test_order_small_pizza(self):
        party = PizzaParty().invite(3).order(1, 'small')
        self.assertEqual(1, party.leftovers())
        self.assertEqual(1, party.pieces_per_person())

    def test_order_medium_pizza(self):
        party = PizzaParty().invite(5).order(2, 'medium')
        self.assertEqual(2, party.leftovers())
        self.assertEqual(2, party.pieces_per_person())

    def test_order_large_pizza(self):
        party = PizzaParty().invite(30).order(4, 'large')
        self.assertEqual(2, party.leftovers())
        self.assertEqual(1, party.pieces_per_person())
