class PizzaParty():

    def __init__(self):
        self.slices = 0
        self.people = 0
        self.sizes = {
            'large': 8,
            'medium': 6,
            'small': 4
        }

    def invite(self, people):
        self.people = self.people + people
        return self

    def order(self, pizzas, size=None):
        size = size.lower() if size else 'large'
        pieces_per_pizza = self.sizes[size.lower()]
        self.slices = self.slices + (pizzas * pieces_per_pizza)
        return self

    def pieces_per_person(self):
        return self.slices / self.people

    def leftovers(self):
        return self.slices % self.people
