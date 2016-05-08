def dad_filter(string)
string.strip.gsub!(/\,+(\,*)/,",").gsub!(/\,*$/,"")
end

def dad_filter2(string)
  string.squeeze(", ").chomp(' ').chomp(',')
end


#print dad_filter("all this,,,, used to be trees,,,,,,")
#print dad_filter("Luke,,,,,,,,, I am your father,,,,,,,,,  ")
print dad_filter2("i,, don't believe this round earth,,, show me evadence!!")
