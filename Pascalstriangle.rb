def pascalsTriangle(n)
output = [1]
row = [1]
(n-1).times do 
  		output << ([0] + row).zip(row + [0]).collect { |a, b| a + b }
		row = ([0] + row).zip(row + [0]).collect { |a, b| a + b }
		end
return output.flatten
end