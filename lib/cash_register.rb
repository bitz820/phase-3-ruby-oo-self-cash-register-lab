require "pry"

class CashRegister

attr_accessor :discount, :total, :items, :last_transaction

def initialize  discount = 0
    @total = 0
    @discount = discount
    @items = []
end

def add_item title, price, quantity = 1
    @total += quantity*price
    @last_transaction = price * quantity
    quantity.times do 
        self.items << title
    end
end

def apply_discount
    if @discount > 0
        emp_disc = @discount*10
        @total = @total - emp_disc
        "After the discount, the total comes to $#{total}."
    else
        "There is no discount to apply."
    end
end

def void_last_transaction
    # binding.pry
    self.total -= @last_transaction
end


# self.items.push(title * quantity)
# if self.items.include? title
#     self.items.push(title)
# else
# end
end

#     attr_reader :discount, :items
#     attr_accessor :total
  

#     def initialize discount = 0
#         @total = 0
#         @discount = discount
#         @items = []
#     end

#     def add_item item, price, quantity = 1
#         @total += price * quantity
#         quantity.times do
#             @items.push(item)
#         end
#     end

#     def apply_discount 
#         if discount == 0 
#             "There is no discount to apply."
#         else
#             @total = @total - (@discount).to_f / 100 * @total
#             "After the discount, the total comes to $#{total.to_i}."
#         end
#     end



# end
























# binding.pry
    # # getter method
    # def total 
    # #    returns
    #     @total
    # end

    # # setter method - 
    # def total=(total)
    #     @total = total
    # end