def autocorrect(input)
	input.gsub!(/\b(u|you|you(u*))\b/i,"your sister")
return input
end


print autocorrect("U Hello you or youuuuu or u or youtube ubuntu ubabes babesu u")