steps = 8
path = "UDDDUDUU"

def countingValleys(steps, path)
  pathes = path.split(//)
  position = 0
  valley = 0
  pathes.each do |path|
    if path == "U"
      if position == -1
        valley += 1
      end
      position += 1
    elsif path == "D"
      position -= 1
    end
  end
  return valley
end

p countingValleys(steps, path)