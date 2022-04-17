def scoring(array)
  array.each do |user|
    user.update_score unless user.is_admin?
  end
end

# same as above
def scoring(array)
  array.each do |user|
    unless user.is_admin?
      user.update_score
    end
  end
end