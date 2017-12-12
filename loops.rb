#LOOPS PRACTICE

# count = 0
# top_end = 10
# #WHILE LOOP
# while count <= top_end
#   p count ** 2
#   count += 1
# end

# array = Array(1..10)
#
# array.each do |num|
#   p num ** 2
# end


# Prompt for the number of columns in the middle of a diamond
# puts "Enter the number of columns for the diamond: "
# count = gets.chomp.to_i
# # Loop from 1 up to the count they entered
# # In each loop we loop from that many spaces for the row, then that many asterisks
# # End with a new line. This forms the top of the diamond.
#
# 1.upto(count) do |i|
#   i.upto(count - 1) { print " " }
#   i.times { print "* " }
#   print "\n"
# end
#
# # Subtract 1 so we don't double up the middle row
# count = count - 1
#
# # Now go from count down to 1
# count.downto(1) do |i|
#   i.upto(count) { print " " }
#   i.times { print "* " }
#   print "\n"
# end
##END OF DIAMOND EXAMPLE

def diamond(count, pattern)
  1.upto(count) do |i|
    i.upto(count - 1) { print " " }
    i.times { print pattern + " " }
    print "\n"
  end

  count = count - 1

  count.downto(1) do |i|
    i.upto(count) { print " " }
    i.times { print pattern + " " }
    print "\n"
  end
end

diamond(5, "+")
