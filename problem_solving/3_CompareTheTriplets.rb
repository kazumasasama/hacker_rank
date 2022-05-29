a = [5, 6, 7]
b = [3, 6, 10]

def compareTriplets(a, b)
  alice = 0
  bob = 0
  i = 0
  while i < a.length
    if a[i] < b[i]
      bob += 1
    elsif a[i] > b[i]
      alice += 1
    end
    i += 1
  end
  return [alice, bob]
end

p compareTriplets(a, b)

# ===================

# アリスとボブの得点を比較して得点が大きい方にポイントを付与し、それぞれのポイント数を配列で返す。
# 得点が同じだった場合はどちらにもポイントは付かない。
# whileループの中で配列aと配列bの同じインデックスの値を比較し、値の大きかった人にポイントを付与

# ===================

# In the while loop, compare each values of same index of a and b arrays.
# Give 1 point to the person if it's score is bigger than the other person.
# When both of them has same score, do nothing.