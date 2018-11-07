# start array for fib numbers
arr = [1, 1]

while arr.last < 100
  arr.push(arr.last(2).sum)
end

arr.pop

p arr
