from checkout.events import Totals


class Printer():

    def __init__(self, output_func):
        self.output_func = output_func

    def receive(self, event):
        if isinstance(event, Totals):
            self.write_total(event)

    def write_total(self, totals):
        def write(label, amount):
            layout = '{label}: {amount}'
            return self.output_func(layout.format(
                label=label,
                amount=self.__as_currency(amount)
            ))

        write('Subtotal', totals.subtotal)
        write('Tax', totals.tax)
        write('Total', totals.total)

    def __as_currency(self, amount):
        return '${:,.2f}'.format(amount)
