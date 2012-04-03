# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  retstr = ""
  string.scan( /r./i ).each do |mtch|
    retstr << mtch[1]
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
