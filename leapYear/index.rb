DAYS_IN_MONTH = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

def isLeap(year)
  if year % 4 == 0
    return true if year % 400 == 0
    return false if year % 100 == 0      
    return true
  end
  false
end

puts "Введите год"
year = gets.chomp.to_i

puts "Введите месяц"
month = gets.chomp.to_i

puts "Введите день"
day = gets.chomp.to_i

amountOfDays =  DAYS_IN_MONTH.take(month - 1).sum
amountOfDays += 1 if isLeap(year)
amountOfDays += day

puts amountOfDays
