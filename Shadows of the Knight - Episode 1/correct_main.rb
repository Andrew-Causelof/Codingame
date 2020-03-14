STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# w: width of the building.
# h: height of the building.
w, h = gets.split(" ").collect {|x| x.to_i}
n = gets.to_i # maximum number of turns before game over.
x0, y0 = gets.split(" ").collect {|x| x.to_i}

#current position
x,y = x0, y0 

minx = 0
miny = 0
maxx = w
maxy = h

# game loop
loop do
    
    bomb_dir = gets.chomp # the direction of the bombs from batman's current location (U, UR, R, DR, D, DL, L or UL)

  if bomb_dir.include? "U"
      maxy = y0 - 1
  end
  
    if bomb_dir.include? "D"
      miny = y0 + 1
  end
  
    if bomb_dir.include? "L"
      maxx = x0 - 1
  end
  
    if bomb_dir.include? "R"
      minx = x0 + 1
  end
  
   x0 = minx + (maxx - minx)/2
   y0 = miny + (maxy - miny)/2
  

  STDERR.puts "current position : #{x0} #{y0}" 
  STDERR.puts "filed dimension : #{w} #{h}"
  STDERR.puts "bomb direction : #{bomb_dir}"
  
    # the location of the next window Batman should jump to.
    puts "#{x0} #{y0}"
end