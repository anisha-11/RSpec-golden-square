def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    if char != " "
    counter[char] += 1
    end 
    
end
  counter.to_a.sort_by { |k, v| v }.reverse[0][0]
#   p counter.to_a.sort


end
  
# Intended output:
# 
puts get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
  