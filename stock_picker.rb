def stock_picker(stock_values)
  profits = {} 
  minimum_values = stock_values.min(stock_values.length / 2)
  minimum = stock_values[0]
  maximum = stock_values[0]

  while minimum_values.length > 0
    minimum = minimum_values.shift
    maximum = stock_values.slice(stock_values.index(minimum) ,stock_values.length).max if stock_values.index(minimum) != 0
    profits[maximum-minimum] = [stock_values.index(minimum), stock_values.index(maximum)]
  end

  return profits[profits.keys.max]
end


def main()
  p stock_picker([17,3,6,9,15,8,6,1,10])
end


main()
