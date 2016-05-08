def format_duration(seconds)
	output = []
	time = Hash.new(0)
	if seconds == 0 
	return "now"
	else 
		until seconds - 31536000 < 0 
			time["year"] += 1
			seconds -= 31536000 
		end
		until seconds - 86400 < 0
			time["day"] += 1
			seconds -= 86400
		end
		until seconds - 3600 < 0
			time["hour"] += 1
			seconds -= 3600
		end
		until seconds - 60 < 0
			time["minute"] += 1
			seconds -= 60
		end
		until seconds - 1 < 0
			time["second"] += 1
			seconds -= 1
		end
	end
time.each {|denom,value| value.to_i == 1 ? output << "#{value} #{denom}" : output << "#{value} #{denom}s"}
output.map!.with_index { |e,i| i > (output.length - 3) ? e : e + ","}
(output.length > 1 ? output.insert((output.length-1),"and") : output).join(" ")
end



