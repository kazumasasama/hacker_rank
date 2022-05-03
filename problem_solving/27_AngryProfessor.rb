k = 3
a = [-1, -3, 4, 2]

def angryProfessor(k, a)
  on_time = a.select{|student| student <= 0}.count
  if on_time < k
    return "YES"
  else
    return "NO"
  end
end

p angryProfessor(k, a)