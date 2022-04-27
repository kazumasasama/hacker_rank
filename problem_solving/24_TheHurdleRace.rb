k = 7
height = [2, 5, 4, 5, 2]

def hurdleRace(k, height)
  if height.max <= k
    return 0
  else
    return height.max - k
  end
end

p hurdleRace(k, height)