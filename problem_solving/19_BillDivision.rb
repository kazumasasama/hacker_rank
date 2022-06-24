def bonAppetit(bill, k, b)
  bill.delete_at(k)
  anna = bill.sum / 2
  if b == anna
    puts "Bon Appetit"
  else
    puts b - anna
  end
end

bill = [3, 10, 2, 9]
k = 1
b = 12
bonAppetit(bill, k, b)

# # ====================
# 問題:
#   アナとブライアンが一緒に食事をし、自分が注文した分だけを払う割り勘にすることにした。
#   ブライアンが請求書を確認してアナの払う分を伝えたが本当にあっているのかな?
#   正しく計算できてるか確かめなければ...

#   bill -> 二人の注文した物の値段
#   k    -> アナが食べなかった物 (billの0から始まるインデックス)
#   b    -> ブライアンがアナに請求した金額

#   もし割り勘金額が正しければ"Bon Appetit"、間違っていた場合は請求された金額との差額を返す。

# ポイント解説:
#   すこしハラハラする問題ですね。焦らず解いていきましょう。

#   Line 2: bill.delete_at(k)
#     bill配列からアナの食べなかったkを除いて配列内を二人で食べたものだけにする。

#     .delete_atは引数で指定したインデックスの値を配列から削除するrubyのビルトインメソッド。
#     元の配列を直接変えてしまう破壊的メソッドなので取り扱い注意。

#   Line 3: anna = bill.sum / 2
#     できた配列の合計を半分にするとアナが払う金額が得られる。

#     なぜかreturnではなく、putsでアウトプットしないとエラーで全テスト不合格になるので注意。
# # ====================

# bill -> Prices for all the orders
# k    -> Index of a order Anna didn't eat
# b    -> Amount of Brian charged Anna

# Line 2: bill.delete_at(k)
#   Delete the order of Anna didn't eat fron the bill array.
#   Make the array only contains the orders of both people ate.

#   .delete_at
#     This is a ruby's builtin method that take a value of index (number),
#     delete the value of index from the array.
#     This is a destructive method. Be careful when you use this method.

# Line 3: anna = bill.sum / 2
#   Add up all the values in the bill array that is modified at the line 2,
#   divide the sum in two, you'll get the value equally devide for Anna.

# Use puts instead of return to output. Otherwise you won't pass any of test cases.