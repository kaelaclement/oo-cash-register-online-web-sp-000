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
    money_off = (@discount / 100) * @total
    @total = @total - money_off
  end

end
