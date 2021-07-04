require_relative 'field'

class Rice < Field

    def initialize(size)
        super(size, "rice", 25)
    end

    def chill
        puts "#{size} hectors of lush rice paddies greet you eyes"
    end
end