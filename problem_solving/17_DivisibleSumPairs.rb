def divisibleSumPairs(n, k, ar)
  i = 0
  count = 0
  while i < n - 1
    j = i + 1
    while j < n
      if (ar[i] + ar[j]) % k == 0
        count += 1
      end
      j += 1
    end
    i += 1
  end
  return count
end

ar = [*(1..6)]
k = 5
n = ar.length
p divisibleSumPairs(n, k, ar)

# # ====================
# 問題:
#   ar配列の中から2つの値を組み合わせてkの値で割り切れる組み合わせが何通りあるかを求める。

# ポイント解説:
#   ar配列に対して2つのループを回し、その中でarの最初とその次の値を足し、
#   それがkで割り切れる場合のみcountに1を足す。
#   nはar.lengthと書いたほうが可読性が上がる気がしますが折角なので使いました。

# # ====================

