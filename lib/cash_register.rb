require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total
        @total
    end

    def add_item(name, price, quantity = 1)
        @total += price * quantity
      quantity.times {@items << name}
        @last_transaction = price * quantity
    end

    def apply_discount
        if @discount > 0
            new_discount = @total * @discount / 100
            @total -= new_discount
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end

end
