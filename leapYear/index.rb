DAYS_IN_MONTH = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

puts "Введите год"
year = gets.chomp.to_i

puts "Введите месяц"
month = gets.chomp.to_i

puts "Введите день"
day = gets.chomp.to_i

amount_of_days =  DAYS_IN_MONTH.take(month - 1).sum
amount_of_days += 1 if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
amount_of_days += day

puts amount_of_days
