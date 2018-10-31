require 'pry'

class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end

  def add_item(item, price, quantity = 1)
    @total = @total + (price * quantity)
  end

  def apply_discount
    money_off = (@discount.to_f / 100.to_f) * @total
    @total = @total - money_off
    # binding.pry
  end

end
