
class CashRegister
  attr_accessor :total, :title, :quantity
  @@cart = []

  def initialize(total = 0)
    @employee_discount = total
    self.empty_cart
    @total = 0
    @total
  end

  def self.cart
    @@cart
  end

  def empty_cart
    @@cart.clear
  end

  def discount
    @employee_discount
  end

  def add_item(title, price, quantity = 1)
    @total = @total + price*quantity
    @title = title
    @price = price
    @quantity = quantity
    @quantity.times{self.class.cart << @title}
    @total
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      @total = @total - @total*self.discount/100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    self.class.cart
  end

  def void_last_transaction
    self.class.cart.pop
    @total = @total - 
  end

end
