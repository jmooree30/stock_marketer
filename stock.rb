a = [10, 11, 2, 9, 4, 3, 5, 6]

def max_profit(prices)
  best = prices.combination(2).map do |buy, sell|
    [buy, sell, sell - buy]
  end.max_by do |buy, sell, profit|
    profit
  end
puts "You bought for #{best[0]} and sold for #{best[1]} for a maximum profit of #{best[2]}!"
end
  max_profit(a)
