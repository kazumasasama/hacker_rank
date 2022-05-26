a = [1, 2, 3, 4, 3, 2, 1]

def lonelyinteger(a)
  return a.group_by{|num| num}.select{|key, value| value.one?}.keys[0]
end

p lonelyinteger(a)



# ================================
# # 配列内の各要素をハッシュでグループ化する
# a.group_by{|num| num} # => {1=>[1, 1], 2=>[2, 2], 3=>[3, 3], 4=>[4]}

# # 取得したハッシュから要素がひとつだけのものを取得
# # value.one?は要素が一つの時にtrue,その他はfalseを返す
# a.group_by{|num| num}.select{|key, value| value.one?} # {4=>[4]}
# # rejectで一つだけの要素を除外すると重複した要素が取得できる
# a.group_by{|num| num}.reject{|key, value| value.one?} # => {1=>[1, 1], 2=>[2, 2], 3=>[3, 3]}

# # 取得した要素のキーを取得
# a.group_by{|num| num}.select{|key, value| value.one?}.keys # => [4]