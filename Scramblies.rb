def scramble(s1,s2)
  
  s1_map = Hash.new(0)
  s1.chars.each {|ch1| s1_map[ch1] += 1}

  s2.chars.each.with_index do |ch2, i|
    if s1_map[ch2] > 0
      s1_map[ch2] -= 1
      return true if i == (s2.length - 1)
    else
      return false
    end
  end
end