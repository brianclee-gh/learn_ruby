#write your code here

def add(num_1, num_2)
    num_1 + num_2
end

def subtract(num_1, num_2)
    num_1 - num_2
end

def sum(arr)
    arr.sum
end

def multiply(num_1, num_2)
    num_1 * num_2
end

def power(num_1, num_2)
    num_1**(num_2)
end

def factorial(n)
    return 1 if n == 0
  
    return n * factorial(n-1)
end


p factorial(4)