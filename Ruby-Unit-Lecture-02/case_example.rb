foo = gets.strip
case foo
     when /^true$/i
     puts "true"
     when /^false$/i
     puts "false"
 	 when /^[0-9]+$/
 	 puts "integer"
 	 when 2,3
 	 puts "2,3"
 	 when 7..12
 	 puts "7..12"
end
