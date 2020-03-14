# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

message = gets.chomp
binary = 0

def codepoint(char)
    char.ord
end

def convert_to_binary(integer)
  array = []
  while integer > 0
    array << integer % 2
    integer /= 2
  end
  array.reverse.join
end

binary = convert_to_binary(codepoint(message))

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."
STDERR.puts "#{binary}"


puts "answer"