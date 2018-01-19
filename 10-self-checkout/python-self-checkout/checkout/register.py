class Register:

    def __init__(self, subscribers):
        self.items = []
        self.__tax_rate = .055
        self.subscribers = subscribers

    def get_next_item(self, read):
        name = read('Enter the name of the item: ')
        price = float(read('Enter the price of the item: '))
        quantity = int(read('Enter the quantity of the item: '))
        self.add_item(name, price, quantity)
        
    def add_item(self, item, price, quantity):
        self.items.append((item, price, quantity))

    def subtotal(self):
        def total_func(total, (item, price, quantity)):
            return total + (price * quantity)

        return reduce(total_func, self.items, 0)

    def tax(self):
        def round_up(subtotal):
            return round(subtotal, 2)

        return round_up(self.subtotal() * self.__tax_rate)

    def total(self):
        return self.subtotal() + self.tax()

    def notify(self, event):
        for subscriber in self.subscribers:
            subscriber.receive(event)
