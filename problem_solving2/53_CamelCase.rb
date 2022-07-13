def camelcase(s)
  return s.count('A-Z') + 1
end

s = "saveChangesInTheEditor"
p camelcase(s)


# ====================
# 問題:
#   与えられた文字列がいくつの単語からできているのかを返す。
#   文字列はキャメルケースで書かれていて、最初の単語の一文字目は小文字。

# 条件:
#   s ->  文字列

# ポイント解説:
#   文字列内にある大文字の数を数えれば単語の数を求めることができる。
#   (最初の単語は大文字では無いので+1が必要)

#   Count uppercase letters in the s string.
#   The first word don't have a uppercase letter. Add 1 up to count.
# ====================