require_relative 'field'

class Wheat < Field

    def initialize(size)
        super(size, "wheat", 30)
    end

    def chill
        puts "#{size} hectors of golden stalks glisten in the sun rays"
    end
end