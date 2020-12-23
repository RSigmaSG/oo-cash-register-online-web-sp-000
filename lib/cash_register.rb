class CashRegister
  
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    
    @total = 0
    @discount = discount
    @items = []
    
  end
  
  def add_item(item_title, item_price, item_quantity = 1)
      
      @items << {:name => item_title,  :price=> (item_price*item_quantity), :quantity => item_quantity}
      @total += item_price*item_quantity
    
  end
  
  def apply_discount
    
    if (@discount != 0)
      @total = @total * (100-@discount) / 100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
    
  end
    
  def items 
    
<<<<<<< HEAD
    @items.collect {|item| item[:quantity].times.collect {item[:name]}}.flatten
=======
    out_arr = @items.collect do |item|
      
      #puts @items[:quantity]
      @items[:quantity].times do
        
        curr_arr << item[:name]
        curr_count +=1
        
      end
      
      curr_arr
      
    end

  out_arr.flatten
>>>>>>> ba72cb76eaaef6b64004511f16c5797998c691a1
    
  end
  
  def void_last_transaction
    
    #puts "popping #{@items[@items.length - 1][:name]} from \n #{@items} \n"
    @total -= @items[@items.length - 1][:price]
    popped = @items.pop()
    #puts "remaining:\n#{@items}"
    @total
    
  end
end
