def trader_of_sunday (prices)
  day = 0
  low = 0
  high = 0
  profit_max = 0

#tant que tous les jours n'ont pas été testé 
  while (day < prices.length)
#le prix d'achat est celui du day0 au début
    buy_price = prices[day]
#nous allons tester tous les prix de vente ainsi que tous les profits max pour chaque buy prices. 
    (day..prices.length - 1).each do |jour|
      sell_price = prices[jour]
      profit = sell_price - buy_price
#puts "le profit est de #{profit}"
      if profit > profit_max
        profit_max = profit
#puts "donc le profit max passe a  #{profit_max}"
        low = prices.index(buy_price)
        high = prices.index(sell_price)
      end
    end

    day += 1
  end

  puts "#{[low, high]}"
  puts "Vous avez fait un profit de #{prices[high]}$ - #{prices[low]}$ == #{prices[high] - prices[low]}$"
end

trader_of_sunday ([17,3,6,9,2,15,8,6,1,10])
