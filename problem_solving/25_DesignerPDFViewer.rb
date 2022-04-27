h = "1 3 1 3 1 4 1 3 2 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 7".split(" ").map{|height| height.to_i}
word = "zaba"

def designerPdfViewer(h, word)
  index = {}
  alphabets = [*("a".."z")]
  i = 0
  h.each do |height|
    index[alphabets[i]] = height
    i += 1
  end
  return dimention = word.split(//).map{|letter| index[letter]}.max * word.length
end

p designerPdfViewer(h, word)