k = 3
c = [1, 1, 1, 0, 1, 1, 0, 0, 0, 0]

def jumpingOnClouds(c, k)
  e = 100
  i = 0
  while true
    i += k
    #　インデックス補正
    if i == c.length - 1
      i = -1
    elsif i > c.length - 1
      i -= c.length
    end
    # エナジー減算
    if c[i] == 0
      e -= 1
    elsif c[i] == 1
      e -= 3
    end
    # p "e: #{e}, i: #{i}, count: #{count}"
    if i == 0
      return e
    end
  end
end

p jumpingOnClouds(c, k)