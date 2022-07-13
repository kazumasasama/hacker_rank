def superReducedString(s)
  letters = s.split(//)

  def delete_duplicated_neighbor(letters)
    i = 0
    while i < letters.length - 1
      if letters[i] == letters[i + 1]
        letters.delete_at(i)
        letters.delete_at(i)
      else
        i += 1
      end
    end
    return letters
  end

  while true
    if letters.empty?
      return "Empty String"
    elsif letters.join() == delete_duplicated_neighbor(letters).join()
      return letters.join()
    else
      delete_duplicated_neighbor(letters)
    end
  end
end

s = "baab"
p superReducedString(s)

# ====================
# 問題:
#   与えられた文字列中の隣り合う二つの同じ文字を文字列から削除する。
#   できた文字列で同じ処理を繰り返し、同じ文字が隣り合っていない文字列を抽出する。
#   上記の処理で文字列が空になった場合は"Empty String"を返す。

# 条件:
#   s ->  文字列

# ポイント解説:
#   何度も同じ処理を繰り返すケースが出てくるので文字列から隣り合う同じ文字を削除する機能はメソッドインメソッドにして繰り返し使えるようにしておく。

#   while true # else以外の条件に該当するまで無限ループさせる
#     if letters.empty? # letters配列が空[]の場合
#       return "Empty String"
#     elsif letters.join() == delete_duplicated_neighbor(letters).join()
#       # lettersにもう一度同じ処理をしても値が変わらない場合
#       return letters.join()
#     else # 処理を続ける
#       delete_duplicated_neighbor(letters)
#     end
#   end

# ====================
#   There may be some cases to use same functions many times. Write a method in method to reuse the method again and again.

#   while true
#     if letters.empty? # when the letters array is empty[]
#       return "Empty String"
#     elsif letters.join() == delete_duplicated_neighbor(letters).join()
#       # when the value won't change if the letters array go through the method again.
#       return letters.join()
#     else # continue deleting adjacent letters that match
#       delete_duplicated_neighbor(letters)
#     end
#   end