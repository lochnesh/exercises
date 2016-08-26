from __future__ import print_function
from party import PizzaParty


def run(read, prt):
    people = int(read('How many people? '))
    pizza_order = int(read('How many pizzas? '))
    prt('%s people with %s pizzas' % (people, pizza_order))
    party = PizzaParty().invite(people).order(pizza_order)
    prt('Each person gets %s pieces of pizza.' % (party.pieces_per_person()))
    prt('There are %s leftover pieces.' % (party.leftovers()))

if __name__ == "__main__":
    run(raw_input, print)
