require 'pry'
class CashRegister
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  attr_accessor :discount, :total
  attr_reader :items
  def add_item(item, price, quantity = 1)
    @last_item = item
    @last_price = price
    quantity.times do
      @items << item
    end
    @total += price * quantity
  end
  def apply_discount
    if @discount != 0
      @total = @total - @total * @discount/100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  def void_last_transaction
    @items.delete(@last_item)
    @total -= @last_price
  end
end















#  7) CashRegister #apply_discount the cash register was initialized with an employee discount applies the discount to the total price
#     Failure/Error: let(:cash_register_with_discount) { CashRegister.new(20) }
#
#     NameError:
#       uninitialized constant CashRegister
#     # ./spec/cash_register_spec.rb:3:in `block (2 levels) in <top (required)>'
#     # ./spec/cash_register_spec.rb:44:in `block (4 levels) in <top (required)>'
#
#  8) CashRegister #apply_discount the cash register was initialized with an employee discount returns success message with updated total
#     Failure/Error: let(:cash_register_with_discount) { CashRegister.new(20) }
#
#     NameError:
#       uninitialized constant CashRegister
#     # ./spec/cash_register_spec.rb:3:in `block (2 levels) in <top (required)>'
#     # ./spec/cash_register_spec.rb:50:in `block (4 levels) in <top (required)>'
#
#  9) CashRegister #apply_discount the cash register was initialized with an employee discount reduces the total
#     Failure/Error: let(:cash_register) { CashRegister.new }
#
#     NameError:
#       uninitialized constant CashRegister
#     # ./spec/cash_register_spec.rb:2:in `block (2 levels) in <top (required)>'
#     # ./spec/cash_register_spec.rb:55:in `block (4 levels) in <top (required)>'
#
#  10) CashRegister #apply_discount the cash register was not initialized with an employee discount returns a string error message that there is no discount to apply
#      Failure/Error: let(:cash_register) { CashRegister.new }
#
#      NameError:
#        uninitialized constant CashRegister
#      # ./spec/cash_register_spec.rb:2:in `block (2 levels) in <top (required)>'
#      # ./spec/cash_register_spec.rb:63:in `block (4 levels) in <top (required)>'
#
#  11) CashRegister #items returns an array containing all items that have been added
#      Failure/Error: new_register = CashRegister.new
#
#      NameError:
#        uninitialized constant CashRegister
#      # ./spec/cash_register_spec.rb:70:in `block (3 levels) in <top (required)>'
#
#  12) CashRegister #void_last_transaction subtracts the last transaction from the total
#      Failure/Error: let(:cash_register) { CashRegister.new }
#
#      NameError:
#        uninitialized constant CashRegister
#      # ./spec/cash_register_spec.rb:2:in `block (2 levels) in <top (required)>'
#      # ./spec/cash_register_spec.rb:79:in `block (3 levels) in <top (required)>'
