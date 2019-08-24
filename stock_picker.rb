def stock_picker(list)
  value = 0
  pick = []
  n = 0
  list.each_with_index do |start, i|
    list[i+1..-1].each_with_index do |final, j| 
      if value < (final - start) 
        value = (final-start)
        n = i + j + 1
        pick = [i,n]
      end
    end
  end
  return pick
end

