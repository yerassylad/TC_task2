require 'date'

monthHash = {}
currentYear = Date.today.year
lastDay = -1

(1..12).each do |month|
  date = Date.new(currentYear, month, lastDay)
  monthHash[date.strftime("%B")] = date.day
end

month30Day = monthHash.select do |month, days|
  days == 30
end
.keys

puts month30Day
