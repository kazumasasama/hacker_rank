def staircase(n)
  i = 1
  n.times do
    if i <= n
      puts " " * (n - i) + "#" * i
    end
    i += 1
  end
end