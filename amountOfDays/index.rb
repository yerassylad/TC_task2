require 'date'

month_hash = {}
current_year = Date.today.year

(1..12).each do |month|
  date = Date.new(current_year, month, -1)
  month_hash[date.strftime("%B").to_sym] = date.day
end

month_30day = month_hash.select { |_, days| days == 30 }.keys

puts month_30day
