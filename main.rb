require_relative "compare"

compare = Compare.new

def seperator(title="")
	puts "-"*40
	puts title unless title.empty?
	puts "-"*40	
end

while true
	puts "Please write your first string."
	str1 = gets.chomp

	puts "Please write your second string."
	str2 = gets.chomp
	
	value = compare.my_str_cmp(str1, str2)	

	seperator("The value of MyStrCmp == #{value}")
	seperator("Result = #{compare.result}")


	puts "Write e to exit, or anything to repeat"	
	control = gets.chomp

	if control == "e"
		exit
	else
		puts "\e[H\e[2J"
	end

end

