vowelsHash = {}
vowelsReg = /[aeiou]/

("a"..."z").each_with_index do |letter, index|
  vowelsHash[letter] = index + 1 if vowelsReg.match(letter)
end

puts vowelsHash
