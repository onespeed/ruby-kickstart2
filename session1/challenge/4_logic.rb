# A grad student at a local university thinks he has discovered a formula to
# predict what kind of grades a person will get. He says if you own less than 
# 10 books, you will get a "D". If you own 10 to 20 books, you will get a "C", 
# and if you own more than 20 books, you will get a "B".
# He further hypothesizes that if you actually read your books, then you will
# get a full letter grade higher in every case.
#
# grade(4,  false)  # => "D"
# grade(4,  true)   # => "C"
# grade(15, true)   # => "B"

def grade(num_books, reads_books)
  case 
  when num_books < 10
    ( reads_books ? 'C' : 'D' )
  when num_books <= 20
    ( reads_books ? 'B' : 'C' )
  else
    'B'
    'A' if reads_books #WHY DOESN'T THIS WORK?
    ( reads_books ? 'A' : 'B' )
  end
end

def test()
  [
  [ 0, false],
  [ 5, false],
  [10, false],
  [15, false],
  [20, false],
  [25, false],
  [ 0, true],
  [ 5, true],
  [10, true],
  [15, true],
  [20, true],
  [25, true]
  ] .each do |tc|
    puts "#{tc[0]}  #{tc[1]}  #{grade(tc[0],tc[1]) }"
  end
end 
#test
