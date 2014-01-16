# This is the test file for the problem 
# Used Rspec for BDD

require_relative "../compare"

describe Compare do
  it "Shoudl return an Integer all the time" do  	  
  	compare.should be_kind_of(Integer)
  end

  it "Should return 0 if the two strings are equal" do
  	expect(compare("str", "str")).to be(0)
  end

  it "Should return -1 if str1 < str2 " do
  	expect(compare("abc", "def")).to be(-1)
  end

  it "Should return +1 if str1 > str2" do
  	expect(compare("def", "abc")).to be(1)
  end

  it "Should print both strings converted if str1 < str2" do
  	c = Compare.new
  	c.my_str_cmp("abcdef", "uvwxyz")

  	expect(c.result).to eq(["fedcba", "zyxwvu"])
  end

  it "Should doube each charecter of the input strings if str1 == str2" do
  	c = Compare.new
  	c.my_str_cmp("abcdef", "abcdef")

  	expect(c.result).to eq("aabbccddeeff")
  end

  it "Should print merged string of both inputs converted if str1 > str2" do
  	c = Compare.new
  	c.my_str_cmp("uvwxyz", "abcdef")

  	expect(c.result).to eq("zfyexdwcvbua")
  end

end


def compare(str1="str1", str2="str2")
	Compare.new.my_str_cmp(str1, str2)	
end