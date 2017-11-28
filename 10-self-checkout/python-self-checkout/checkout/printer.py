class Printer():

    def __init__(self, output_func):
        self.output_func = output_func

    def write_total(self, register):
        def write(label, amount):
            return self.output_func('{label}: {amount}'.format(label=label,
                                                               amount=self.__as_currency(amount)))

        write('Subtotal', register.subtotal())
        write('Tax', register.tax())
        write('Total', register.total())

    def __as_currency(self, amount):
        return '${:,.2f}'.format(amount)
