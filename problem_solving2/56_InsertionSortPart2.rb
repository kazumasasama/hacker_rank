def insertionSort2(n, arr)
  i = 0
  j = 1
  while i < n - 1
    while j < n - 1
      current_value = arr[i]
      if current_value > arr[j]
        arr[i] = arr[j]
        arr[j] = current_value
      end
      i += 1
      j = i + 1
      p i
      p j
      puts arr.join(' ')
    end
    i += 1
  end
end

n = 6
arr = [1, 4, 3, 5, 6, 2]
insertionSort2(n, arr)