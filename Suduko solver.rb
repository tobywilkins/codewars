def validSolution(board)
line_correct = board.all? {|line| line.inject{|memo,num| memo + num} == 45}
column_order = []
index = 0
9.times do 
		board.each {|line| column_order << line[index]}
		index += 1
		end
columns = column_order.flatten.each_slice(9).to_a
columns_correct = columns.all? {|line| line.inject{|memo,num| memo + num} == 45}
grid_order = []
index = 0
3.times do
		board.each {|line| grid_order << line.shift(3)}
		index += 1
	end
grids = grid_order.flatten.each_slice(9).to_a
grids_correct = grids.all? {|line| line.inject{|memo,num| memo + num} == 45}
line_correct && columns_correct && grids_correct ? true : false
end





print validSolution([[5, 3, 4, 6, 7, 8, 9, 1, 2], 
               		 [6, 7, 2, 1, 9, 5, 3, 4, 8],
	           		 [1, 9, 8, 3, 4, 2, 5, 6, 7],
	           		 [8, 5, 9, 7, 6, 1, 4, 2, 3],
	           		 [4, 2, 6, 8, 5, 3, 7, 9, 1],
	           		 [7, 1, 3, 9, 2, 4, 8, 5, 6],
	           		 [9, 6, 1, 5, 3, 7, 2, 8, 4],
	           		 [2, 8, 7, 4, 1, 9, 6, 3, 5],
	           		 [3, 4, 5, 2, 8, 6, 1, 7, 9]])
