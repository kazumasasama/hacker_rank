def sum_terms(n)
  (0..n).inject {|sum, num| sum + (num * num + 1)}
end