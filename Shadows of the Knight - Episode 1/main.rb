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

# field coordinates 
# [0,0]    [w-1,0]       0  2   [0][0,1]  [2][0,1]
# [0, h-1] [w-1,h-1]     1  3   [1][0,1]  [3][0,1]
#
@field = [[0,0],[0,h-1],[w-1,0],[w-1,h-1]]

# game loop
loop do
    
    bomb_dir = gets.chomp # the direction of the bombs from batman's current location (U, UR, R, DR, D, DL, L or UL)
  
 
 case bomb_dir
   when "UL"
       
       @field[3][0] = x
       @field[3][1] = y
       
       dx = @field[3][0] - @field[0][0] 
       dy = @field[3][1] - @field[2][1]
             
       dx > 1 ? x = x - dx / 2 : x -= 1
       dy > 1 ? y = y - dy / 2 : y -= 1
       
       
   when "U"
       
       @field[1][0] = x
       @field[1][1] = y
       @field[3][0] = x
       @field[3][1] = y
       
       @field[0][0] = x
       @field[2][0] = x
       
       
       dy = @field[1][1] - @field[0][1]
       
       dy > 1 ? y = y - dy / 2 : y -= 1
       
       
   when "UR"
       
       @field[1][0] = x
       @field[1][1] = y
       
       dx = @field[2][0] - @field[1][0] 
       dy = @field[1][1] - @field[2][1]
             
       dx > 1 ? x = x + dx / 2 : x += 1
       dy > 1 ? y = y - dy / 2 : y -= 1
       
       
   when "L"
       
       @field[2][0] = x
       @field[2][1] = y
       @field[3][0] = x
       @field[3][1] = y
       
       @field[0][1] = y
       @field[1][1] = y
       
       dx = @field[2][0] - @field[0][0]

       dx > 1 ? x = x - dx / 2 : x -= 1
       
       
   when "R"
       
       @field[0][0] = x
       @field[0][1] = y
       @field[1][0] = x
       @field[1][1] = y
       
       @field[2][1] = y
       @field[3][1] = y
       
       dx = @field[2][0] - @field[0][0]

       dx > 1 ? x = x + dx / 2 : x += 1  
       
   when "DL"
       
       @field[2][0] = x
       @field[2][1] = y
       
       dx = @field[2][0] - @field[0][0] 
       dy = @field[1][1] - @field[2][1]
             
       dx > 1 ? x = x + dx / 2 : x += 1
       dy > 1 ? y = y + dy / 2 : y += 1
       
       
   when "D"
       
       @field[0][0] = x
       @field[0][1] = y
       @field[2][0] = x
       @field[2][1] = y
       
       @field[1][0] = x
       @field[3][0] = x
       
       
       dy = @field[1][1] - @field[0][1]
       
       dy > 1 ? y = y + dy / 2 : y += 1

   when "DR"
       
       @field[0][0] = x
       @field[0][1] = y
       
       dx = @field[3][0] - @field[0][0] 
       dy = @field[3][1] - @field[0][1]
             
       dx > 1 ? x = x + dx/ 2 : x += 1
       dy > 1 ? y = y + dy/ 2 : y += 1
    
  end
     

  STDERR.puts "current position : #{x} #{y}" 
  STDERR.puts "filed dimension : #{w} #{h}"
  STDERR.puts "bomb direction : #{bomb_dir}"
  STDERR.puts "field position : #{@field}"
    
    # the location of the next window Batman should jump to.
    puts "#{x} #{y}"
end