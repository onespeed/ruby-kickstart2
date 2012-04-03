# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"


def non_working_pirates_say_arrrrrrrrr(string)
  # This string scanning/matching doesn't handle an r after an r
  retstr = ""
  string.scan( /r./i ).each do |mtch|
    retstr << mtch[1]
  end
  retstr
end

def pirates_say_arrrrrrrrr(string)
  retstr = ""
  (0...string.length).each do |i|
    if string[i] =~ /r/i
      retstr << ( string[i+1] || "" ) # handle nil returned if string ends in 'r'
    end
  end
  retstr
end



def test
  td = {
   "are you really learning Ruby?" => "eenu",
   "Katy Perry is on the radio!"  =>  "rya",
   "Pirates say arrrrrrrrr"       =>  "arrrrrrrr" 
  }

  td.each do | key, val |
    failmsg = ( pirates_say_arrrrrrrrr(key) == val ? 'pass' : "FAIL" )
    puts %Q{PSA(#{key}) = #{pirates_say_arrrrrrrrr(key)} ?==? #{val} -- #{failmsg} }
  end 

end

test
