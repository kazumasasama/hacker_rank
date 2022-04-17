def skip_animals(animals, skip)
  result = []
  animals.each_with_index {|animal, i|
    if i >= skip
      result << "#{i}:#{animal}"
    end
  }
  return result
end