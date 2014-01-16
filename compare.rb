# Please note that I didn't use <=> operand
# I didn't go to compare each charecter as it's 
# supported by > and < for the whole string in ruby 
# the other implementation of comparing each charected 
# is very easy, let me know if you want me to change it.

class Compare
	attr_reader :result

	def my_str_cmp(str1, str2)				
		if str1 > str2			
			@result = merge(str1, str2)			
			return 1						
		elsif str1 == str2
			@result = str1.each_char.map{|x| x*2}.join
			return 0
		else
			@result = [str1, str2].map(&:reverse)
			return -1
		end				
	end	

	private

	def merge(str1, str2)
		output = ""
		
		str_inv = [str1, str2].map(&:reverse)
		size_of_longest_word= str_inv.group_by(&:size).max[0]
		
		size_of_longest_word.times do |i|
			output << str_inv[0][i] if str_inv[0][i] 
			output << str_inv[1][i] if str_inv[0][i] 
		end

		return output
	end

end


