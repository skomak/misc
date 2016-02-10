# for ANSI terminals

light = "\033[7m"
std = "\033[m"

print "string> "
str = gets.chop

while true
  print "pattern> "
  pat = gets.chop
  break if pat.empty?
  re = Regexp.new(pat)
  puts str.sub(re,"#{light}\\&#{std}")
end
