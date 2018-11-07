# func which returns fib number
def fibonacci(number)
  if number == 1 || number == 2
    1
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

iterator = 1
fibEnd = 100
arrOfFibNums = []

loop do
  fibNum = fibonacci(iterator)
  break if fibNum > fibEnd
  arrOfFibNums.push(fibNum)
  iterator += 1
end

p arrOfFibNums
