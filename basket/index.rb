basket_hash = {}

loop do
  puts "Введите НАЗВАНИЕ товара"
  name = gets.chomp.downcase
  break if  name == "стоп"

  puts "Введите ЦЕНУ за единицу товара"
  price = gets.chomp.to_f

  puts "Введите КОЛИЧЕСТВО товара"
  amount = gets.chomp.to_f

  basket_hash[name.to_sym] = {price: price, amount: amount}
end

# print hash of items
puts "Хэш товаров: #{basket_hash}"

arr_of_prices = []

# print total price for each item
basket_hash.each do |key, val|
  totalItem = val[:price] * val[:amount]
  arr_of_prices.push(totalItem)
  puts "#{key}: #{totalItem}"
end

# total price for ALL items
puts "Итоговая сумма #{arr_of_prices.sum}"
