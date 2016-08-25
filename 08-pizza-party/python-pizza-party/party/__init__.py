class PizzaParty():

    def __init__(self, pizzas):
        self.pizzas = pizzas

    def guests(self, people):
        self.people = people
        self.pieces_per_person = self.pizzas / people
        self.leftovers = self.pizzas % people
