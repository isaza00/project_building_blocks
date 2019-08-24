def substrings(word, dict)
  count = 0
  final_dict = {}
  dict.each do |word_in_dict|
    result = word.downcase.scan(/\w*#{word_in_dict}\w*/).to_a
    if result.length != 0 
      count = result.length
      final_dict[word_in_dict] = count
    end
  end
  final_dict.sort_by { |key| key }.to_h #sort answer by alphabetical order
end


