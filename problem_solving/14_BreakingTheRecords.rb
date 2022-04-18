scores = [10, 5, 20, 20, 4, 5, 2, 25, 1]
def breakingRecords(scores)
  h = 0
  l = 0
  high_low = {high: 0, low: 0, highest: scores[0], lowest: scores[0]}
  scores.each do |score|
    if high_low[:highest] < score
      high_low[:highest] = score
      h += 1
    end
    if high_low[:lowest] > score
      high_low[:lowest] = score
      l += 1
    end
  end 
  return h, l
end