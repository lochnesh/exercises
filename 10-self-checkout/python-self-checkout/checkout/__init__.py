class Register:

    def __init__(self):
        self.items = []
        self.__tax_rate = .055

    def add_item(self, item, price, quantity):
        self.items.append((item, price, quantity))

    def subtotal(self):
        return reduce(self.__total_func, self.items, 0)

    def tax(self):
        def round_up(subtotal):
            return round(subtotal, 2)

        return round_up((self.subtotal() * (1 + self.__tax_rate)))

    def __total_func(self, total, (item, price, quantity)):
        return total + (price * quantity)
