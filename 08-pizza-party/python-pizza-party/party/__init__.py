PIECES_PER_PIZZA = 8


class PizzaParty():

    def __init__(self):
        self.slices = 0
        self.people = 0

    def invite(self, people):
        self.people = self.people + people
        return self

    def order(self, pizzas):
        self.slices = self.slices + (pizzas * PIECES_PER_PIZZA)
        return self

    def pieces_per_person(self):
        return self.slices / self.people

    def leftovers(self):
        return self.slices % self.people
