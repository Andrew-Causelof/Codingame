# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

message = gets.chomp

# convering number to binary code
def convert_to_binary(integer)
  array = []
  while integer > 0
    array << integer % 2
    integer /= 2
  end
  
  #Checking for 7 bits
  array.push(0) if array.length == 6
  #Returning reversed array
  array.reverse
end

letter = []

# we are goign to split each char in gotten message and then convert to binary array
message.split('').each { |char| 
  
   letter += convert_to_binary(char.ord)
}

#==============MAIN BODY =======================================
#So far im too lazy to pack it all into one function, so its realy work same way as written below
@output = ""
@previous = letter[0] 
@counter = 0

letter.each{ |i|
 # first number
   @output << "00 0" if @counter == 0 && i == 0 
   @output << "0 0"  if @counter == 0 && i == 1
 
 if  @counter > 0 && i == @previous
   @output << "0"
 elsif @counter > 0 && i != @previous
  @output << " 00 0" if i == 0
  @output << " 0 0" if i == 1
 end
@previous = i
@counter += 1
}      
#==============RESULT HAS BEEN CALCULATED========================


puts "#{@output}"