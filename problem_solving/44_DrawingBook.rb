def pageCount(n, p)
  if n <= 2
    return 0
  elsif n.even? && n - p == 1
    return 1
  else
    return [p / 2, (n - p) / 2].min
  end
end

n, p = 5, 4
p pageCount(n, p)

# # ====================
# 問題:
#   目的のページまで1ページずつめくる時、本の初めからか、最後からか、どちらかページをめくる回数の少ない方の回数を返す。

# ポイント解説:
#   if n <= 2
#     総ページ数が3より少なければめくる必要がないので0

#   elsif n.even? && n - p == 1
#     ページ数が偶数かつ開きたいページが最後のページが後ろから1ページのみだった場合

#   return [p / 2, (n - p) / 2].min
#     上記以外の場合は1ページめくるとインデックスは2正負どちらかに動くので、
#     前から開いた場合と後ろから開いた場合のページをめくる数それぞれを配列に入れ、
#     どちらか小さい方を返す。
# # ====================
#   if n <= 2
#     if total page number is smaller than 3, that means the page is already open.

#   elsif n.even? && n - p == 1
#     if total index of the book is even number and the target index is right before the last page, return 1. (The last page will be left side of the book.)

#   return [p / 2, (n - p) / 2].min
#     Store both numbers of flipping from the front and from the end.
#     Return smaller value in the array.