stock_prices =[17,3,6,9,15,8,6,1,10] #9 days

def stock_picker(stock_prices)
  num_days = stock_prices.size
  max = 0
  min = 0
  #start with first and compare it to every subsequent, storing highest difference
  stock_prices.each_index do |current_stock_index|
    #stop at lowest price
      if stock_prices[current_stock_index] < stock_prices[min]
        min = current_stock_index
      end
    #get index of this stock so you ONLY compare what comes after
    #now loop through the rest of the array
    stock_prices.each_index do |index|
      if index > current_stock_index
        max_diff = stock_prices[index] - stock_prices[current_stock_index]
          if max_diff > max
            max = index
          end
      end
    end

  end
  days_to_buy_sell = [min, max]
end

p stock_picker(stock_prices)
