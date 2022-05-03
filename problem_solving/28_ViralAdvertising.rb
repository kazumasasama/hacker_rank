n = 5

def viralAdvertising(n)
  shared = [2]
  people = 2
  while n > 1
    people = (people * 3) / 2
    shared << people
    n -= 1
  end
  return shared.sum
end

p viralAdvertising(n)