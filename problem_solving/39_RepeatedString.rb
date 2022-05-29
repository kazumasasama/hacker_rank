s = 'aab'
n = 882787

def repeatedString(s, n)
  result = (n / s.length) * s.count('a')
  leftover = n % s.length - 1
  if leftover >= 0
    result += s[0..leftover].count('a')
  end
  return result
end

p repeatedString(s, n)

# ==============================

# Line 5. nをsの文字数で割って、その中の'a'の数を取得
# Line 6. 割り切れなかった余りを取得(割り切れた場合は'-1')
# Line 7. 余りが0または0以上の時
# Line 8. Line 6でインデックスを取得しているので0の場合はsの最初の1文字、1の場合は2文字...にある'a'の数を所得してresultに足す

# ==============================

# Line 5. count how many 'a' appears in the repeated s
# Line 6. store remainder into leftover valiable (number of letters need to add to result)
# Line 7. if leftover is equal or bigger than 0
# Line 8. add number of 'a' appears in leftover