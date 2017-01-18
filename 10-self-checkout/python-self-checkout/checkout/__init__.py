class Register:

    def __init__(self):
        self.items = []

    def add_item(self, item, price, quantity):
        self.items.append((item, price, quantity))

    def subtotal(self):
        return reduce(self.__total_func, self.items, 0)

    def __total_func(self, total, (item, price, quantity)):
        return total + (price * quantity)
