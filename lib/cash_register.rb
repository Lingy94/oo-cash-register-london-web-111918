class CashRegister

  attr_accessor :discount, :total, :price, :name, :quantity, :array

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @array = []
  end

  def add_item(name, price, quantity = 1)
    @name = name
    @price = price*quantity
    @total += price*quantity
    quantity.times{array << name}
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
    @total = @total*(1-(discount.to_f/100))
    return "After the discount, the total comes to $#{@total.to_i}."
  end
  end

  def items
    @array
  end

  def void_last_transaction
    @total -= @price
  end
end
