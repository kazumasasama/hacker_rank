def utopianTree(n)
  i = 0
  height = 0
  (n + 1).times do
    if i == 0
      height = 1
    elsif i.odd?
      height *= 2
    elsif i.even?
      height += 1
    end
    i += 1
  end
  return height
end

p utopianTree(4)