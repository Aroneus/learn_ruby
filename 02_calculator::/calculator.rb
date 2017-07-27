#write your code here
def add(x,y)
  z = x + y
end

def subtract(x,y)
  z = x - y
end

def sum(x)
  x.inject(0, :+)
end

def multiply(x)
  x.inject(:*)
end

def power(x, y)
  z = x**y
end

def factorial(x)
if x == 0
  z = 0
else
  z = []
  for i in 1..x
  z.push(i)
end
  z.inject(:*)
end
end
