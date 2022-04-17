def count_multibyte_char(string)
  string.each_char.select{|letter| letter.bytesize > 1}.count
end