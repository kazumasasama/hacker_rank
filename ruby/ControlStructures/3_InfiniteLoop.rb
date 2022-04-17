loop do
  coder.practice
  break if coder.oh_one? 
end

# same as above
loop do
  coder.practice
  if coder.oh_one?
    break
  end
end