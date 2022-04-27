# まだ途中
# won't get correct result. still working...

a = [3, 9, 6]
b = [36, 72]

def getTotalX(a, b)
  a = a.sort
  b = b.sort
  divisors = {}
  divisor = 2
  b.each do |num|
    while divisor <= num
      if num % divisor == 0
        if divisors[divisor]
          divisors[divisor] += 1
        else
          divisors[divisor] = 1
        end
      end
      divisor += 1
    end
    divisor = 2
  end
  p divisors = divisors.select{|k, v| v == divisors.max{|a, b| a[1] <=> b[1]}[1]}

  products = {}
  product = 0
  a.each do |num|
    while product <= b[-1]
      product = num * num
      if products[product]
        products[product] += 1
      else
        products[product] = 1
      end
    end
  end

  result = []
  products.each do |product|
    if !divisors[product]
    else
      result << product
    end
  end
  return result.length
end

p getTotalX(a, b)