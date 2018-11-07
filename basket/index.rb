basketHash = {}

loop do
  puts "Введите НАЗВАНИЕ товара"
  name = gets.chomp.downcase
  break if  name == "стоп"
  basketHash[name] = {}

  puts "Введите ЦЕНУ за единицу товара"
  price = gets.chomp.to_f
  basketHash[name]["price"] = price

  puts "Введите КОЛИЧЕСТВО товара"
  amount = gets.chomp.to_f
  basketHash[name]["amount"] = amount
end

# print hash of items
print "\n\nХэш товаров: ", basketHash, "\n\n"

arrOfPrices = []

# print total price for each item
basketHash.each do |key, val|
  totalItem = val["price"] * val["amount"]
  arrOfPrices.push(totalItem)
  puts "#{key}: #{totalItem}"
end

# total price for ALL items
print "\nИтоговая сумма равна: ", arrOfPrices.sum, "\n"
