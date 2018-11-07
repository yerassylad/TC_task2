# start array for fib numbers
arr = [1, 1]

while (val = arr.last(2).sum) < 100
  arr.push(val)
end

p arr
