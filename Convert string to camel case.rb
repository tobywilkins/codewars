def to_camel_case(str)
	if str.empty? 
		return str
	else
str.gsub!(/(\-|_)/, " ").split(' ').map.with_index {|word,index| index != 0 ? word.capitalize : word}.join(' ').gsub!(/\s/,"")
	end
end