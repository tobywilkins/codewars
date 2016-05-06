def separate_liquids(glass)
	if glass.empty? then return [] else
glass_width = nil
glass.map.with_index {|row,index| index == 0 ? glass_width = row.length : nil}
density = ["O","A","W","H"] 
all_elements = glass.flatten.sort_by { |element| density.index(element)}.each_slice(glass_width).to_a
end
end

print separate_liquids([['H', 'H', 'W', 'O'],['W','W','O','W'],['H','H','O','O']])
print separate_liquids([])




#O
#A
#W
#H