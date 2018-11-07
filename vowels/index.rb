vowels_hash = {}
vowels_reg = /[aeiou]/

("a".."z").each.with_index(1) do |letter, index|
  vowels_hash[letter] = index if vowels_reg.match(letter)
end

puts vowels_hash
