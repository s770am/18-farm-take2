require_relative 'corn'
require_relative 'rice'
require_relative 'wheat'


class Menu

def initialize
puts "welcome to the game"
end

def inputer
while true
print_menu
puts "enter your number to select"
selection = gets.chomp.to_i
selector(selection)
end
end

def print_menu
    puts "Options:
  1-  field -> adds a new field
  2-  harvest -> harvests crops and adds to total harvested
  3-  status -> displays some information about the farm
  4-  relax -> provides lovely descriptions of your fields
  5-  exit -> exits the program"
end

def selector(selection)
case selection
when 1 then Menu.create
when 2 then Field.harvest
when 3 then Field.status
when 4 then Field.relax
when 5 then exit(true)
end
end

def self.create
puts "what type of field would you like to make"
type = gets.chomp
puts "how big would you like it to be"
size = gets.chomp.to_i

case type
    when "corn"
        Corn.new(size)
        puts "you created a #{type} field of #{size}"
    when "rice"
        Rice.new(size)
        puts "you created a #{type} field of #{size}"
    when "wheat"
        Wheat.new(size)
        puts "you created a #{type} field of #{size}"
    else 
        puts "#{type} is not a valid type"
end
end

end

my_game = Menu.new
my_game.inputer