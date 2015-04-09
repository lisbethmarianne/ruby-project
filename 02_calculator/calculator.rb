def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  array.inject(0) {|sum, item| sum + item}
end

def multiply(*nums)
  array = []
  nums.each {|num| array.push(num)}
  array.inject(1) {|product, item| product * item}
end

def power(num1, num2)
  num1 ** num2
end

def factorial(num) 
  if num == 0
    1
  else
    (1..num).inject(1) {|product, item| product * item}
  end
end
