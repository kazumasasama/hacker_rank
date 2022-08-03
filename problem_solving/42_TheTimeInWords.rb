def timeInWords(h, m)
  numbers = {
    "one": 1, "two": 2, "three": 3, "four": 4, "five": 5, 
    "six": 6, "seven": 7, "eight": 8, "nine": 9, "ten": 10,
    "eleven": 11, "twelve": 12, "thirteen": 13, "fourteen": 14,
    "sixteen": 16, "seventeen": 17, "eighteen": 18, "ninteen": 19, "twenty": 20,
    "twenty one": 21, "twenty two": 22, "twenty three": 23, "twenty four": 24, "twenty five": 25,
    "twenty six": 26, "twenty seven": 27, "twenty eight": 28, "twenty nine": 29
  }
  if m == 0
    return time_string = "#{numbers.key(h)} o' clock"
  elsif m == 1
    return time_string = "#{numbers.key(m)} minute past #{numbers.key(h)}"
  elsif m == 15
    return time_string = "quarter past #{numbers.key(h)}"
  elsif m == 30
    return time_string = "half past #{numbers.key(h)}"
  elsif m == 45
    h += 1
    return time_string = "quarter to #{numbers.key(h)}"
  elsif m > 0 && m < 30
    return time_string = "#{numbers.key(m)} minutes past #{numbers.key(h)}"
  elsif m > 30 && m < 60
    m = 60 - m
    h += 1
    return time_string = "#{numbers.key(m)} minutes to #{numbers.key(h)}"
  end
end

h, m = 5, 45
p timeInWords(h, m)

# # ====================
# 問題:
#   時間と分を文字列で表現する問題。

# ポイント解説:
#   全パターンを条件分岐だけで書いていくこともできるが、ハッシュを使うことで共通した出力毎に分岐させて処理できるようにした。
#   31以上は何時何分前と出力するので60から分を引き、何分前なのかを求める。時間は1時間足しておく。

# # ====================
# You can solve this problem by returning every possible patterns in if conditionals but let's use hash to make the code shorter and readable.
# If the minutes is equal to or greater than 31, returning string's minutes should be difference of (60 - minutes), and hour should be increased by 1.