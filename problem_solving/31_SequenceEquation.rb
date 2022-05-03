p = [2, 3, 1]

def permutationEquation(p)
  sorted_p = p.sort
  result = sorted_p.map do |num|
    i = p.index(num) + 1
    p.index(i) + 1
  end
  result.each do |r|
    p r
  end
end

permutationEquation(p)