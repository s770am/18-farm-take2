require_relative 'field'

class Corn < Field

    def initialize(size)
        super(size, "corn", 20)
    end

    def chill
        puts "you see #{size} hectors of waving green corn stalks"
    end
end
