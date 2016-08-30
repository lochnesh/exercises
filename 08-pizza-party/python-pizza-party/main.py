#!/usr/bin/python

from __future__ import print_function
from party import PizzaParty


def run(read, prt):
    people = int(read('How many people? '))
    pizza_order = read('How many pizzas? ')
    order_parts = str.split(pizza_order)
    pizzas = int(order_parts[0])
    size = None
    if len(order_parts) == 2:
        size = order_parts[1]
    prt('%s people with %s pizzas' % (people, pizzas))
    party = PizzaParty().invite(people).order(pizzas, size)
    prt('Each person gets %s pieces of pizza.' % (party.pieces_per_person()))
    prt('There are %s leftover pieces.' % (party.leftovers()))

if __name__ == "__main__":
    run(raw_input, print)
