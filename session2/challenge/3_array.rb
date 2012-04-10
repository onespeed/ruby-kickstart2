# Write a method named every_other_char for strings that, 
# returns an array containing every other character
# 
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    str = ""
      (0...self.length).select {|i| i.even?} .each do |i|
        str << self[i]
      end
    str
  end

end

# I'd like a non-loop solution for this, something like
# self.each_with_index do 2
# It seems like it should be a one-liner
# (tom, 4/7/2012)

