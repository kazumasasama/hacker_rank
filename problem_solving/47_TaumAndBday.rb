def taumBday(b, w, bc, wc, z)
  if bc > wc + z
    white = (b + w) * wc
    black = b * z
  elsif bc + z < wc
    black = (b + w) * bc
    white = w * z
  else
    return b * bc + w * wc
  end
  return white + black
end

b, w = 5, 9
bc, wc, z = 2, 3, 4
p taumBday(b, w, bc, wc, z)