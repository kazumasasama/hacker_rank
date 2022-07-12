def workbook(n, k, arr)
  prob_in_page = []
  arr.each do |prob|
    probs = []
    i = 1
    while i <= prob
      if probs.length == k
        prob_in_page << probs
        probs = []
      end
      probs << i
      i += 1
    end
    prob_in_page << probs
  end
  i = 1
  count = 0
  prob_in_page.each do |page|
    if page.include?(i)
      count += 1
    end
    i += 1
  end
  return count
end

n = 15
k = 20
arr = [1, 8, 19, 15, 2, 29, 3, 2, 25, 2, 19, 26, 17, 33, 22]
p workbook(n, k, arr)

# ====================
# 問題:
#   リサの数学の新しい問題集の問題はチャプター毎に分かれている。
#   この問題集には特別問題があり、それはその特別問題の問題番号とページ数が一致した問題が特別問題となっている。
#   この問題集にある特別問題の数を返す。

# 条件:
#   n ->    チャプターの数
#   k ->    ページ毎の最大問題数
#   arr ->  それぞれのチャプターにある問題の数

# ポイント解説:
#   Line 6:
#     while i <= prob
#       if probs.length == k
#         prob_in_page << probs
#         probs = []
#       end
#       probs << i
#       i += 1
#     end
#     1ページの最大問題数毎に問題を分けてprob_in_page配列に入れる。

#   Line 20:
#     if page.include?(i)
#       count += 1
#     end
#     ページ毎に問題が分かれた配列にページ数と合致する問題番号があればtrue
# ====================
#   Line 6:
#   while i <= prob
#     if probs.length == k
#       prob_in_page << probs
#       probs = []
#     end
#     probs << i
#     i += 1
#   end
#   Devide problems in k, shovel in to the prob_in_page array

#   Line 20:
#   if page.include?(i)
#     count += 1
#   end
#   True if inner array of prob_in_page contains problem number that is equal to page index.