n = 9
ar = [10, 20, 20, 10, 10, 30, 50, 10, 20]

def sockMerchant(n, ar)
  count = 0
  grouped = ar.group_by(&:itself).map{|k, v| [k, v.count]}.to_h
  grouped.each_value do |v|
    count += (v / 2)
  end
  return count
end

p sockMerchant(n, ar)