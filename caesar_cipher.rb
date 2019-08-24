def caesar_cipher(sentence, shift)
  new_sentence = ""
  new_c = ""
  new_shift = 0
  list_min = ("a".."z").to_a
  list_may = ("A".."Z").to_a
  sentence.each_char do |c|
    if list_min.include?(c) 
      new_shift = c.ord + shift
      new_shift > 122 ? new_c=(new_shift-26).chr : new_c=new_shift.chr
    elsif list_may.include?(c)
      new_shift = c.ord + shift
      new_shift > 90 ? new_c=(new_shift-26).chr : new_c=new_shift.chr 
    else 
      new_c = c
    end
    new_sentence = new_sentence + new_c
  end
  return new_sentence
end
