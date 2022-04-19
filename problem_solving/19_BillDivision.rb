# k = index of food anna didnt eat
# b = amount brian charged anna
def bonAppetit(bill, k, b)
  brian = bill.delete_at(k)
  anna = bill.sum / 2
  if b == anna
    return "Bon Appetit"
  else
    return b - anna
  end
end

bill = [3, 10, 2, 9]
k = 1
b = 12

p bonAppetit(bill, k, b)