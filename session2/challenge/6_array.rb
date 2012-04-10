# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime. 
# 
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself. 
# 
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
# 
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

def prime_chars?(ary)
  # I think this could be a one-liner with something like this
  #ary.map {|st| st.length } # this makes an array of the lengths, now join?

  # but for now, lets' go with the .each I know...
  totln = 0
  ary.each { |st| totln += st.length }

  # apparently the test spec wants 0 and 1 to return false
  return false if totln == 0 || totln == 1
  # now check for prime
  (2...totln).each do |i|
    return false if totln % i == 0
  end
  # if you got through the loop, then the totln is prime
  return true

end
