def chocolateFeast(n, c, m)
  wrapper = n / c
  count = wrapper
  while wrapper >= m
    wrapper -= m
    wrapper += 1
    count += 1
  end
  return count
end

n, c , m = 34587, 86, 33334
p chocolateFeast(n, c, m)

# ====================
# 問題:
#   リトルボビーはチョコレートが大好き。
#   お気に入りのお店がセールをしていてチョコレートの包装を決められた数返却すると1つ無料でチョコレートがもらえる。
#   全部でどれだけのチョコレートが食べれるかを求める。
  
#   無料でもらったチョコレートの包装も交換できる。

# 条件:
#   n => チョコレートを買う予算
#   c => 一つのチョコレートの値段
#   m => 交換に必要な包装の枚数

# ポイント解説:
#   ループ内で一回交換する毎にcount(食べたチョコレートの総数)を1増やす。
#   1つのチョコレートに交換するのでwrapper(包装の数)必要枚数を引いた後、交換して得た包装の数(1)を足す。

# ====================
# in the while loop
#   increase the count valiable by 1 every time wrapper exchanged into a chocolate.
#   decrease the wrapper valiable by m (exchanged wrappers) and increase the count by 1 as getting a exchanged chocolate.