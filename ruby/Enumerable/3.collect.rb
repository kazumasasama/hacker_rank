def rot13(secret_messages)
  # your code here
  decrypt = {}
  keys1 = [*("a".."m")]
  keys2 = [*("n".."z")]
  i = 0
  keys1.each do |key|
    decrypt[key] = keys2[i]
    i += 1
  end
  i = 0
  keys2.each do |key|
    decrypt[key] = keys1[i]
    i += 1
  end
  
  i = 0
  decrypted = secret_messages.map {|words| words.split(/ /).map {|word| word.split(//).map {|letter| letter = decrypt[letter]}.join()}.join(" ")}
end