class Field
    @@fields = []
    @@harvested = 0

    def initialize(size, type, production)
@size = size
@type = type
@production = production
@@fields << self
    end

    attr_accessor :size, :type, :production

    def self.harvest
@@fields.each do |field|
    food = 0
field.size.times do
    food += field.production
@@harvested += field.production
end
puts "you have hearvested a #{field.type} field and produced #{food} amount of food"
@@fields.delete(field)
end
    end

    def self.status
@@fields.each do |field|
    puts "you have #{field.size} hectors of #{field.type} "
end
puts "the amount of food you have harvested is #{@@harvested}"
    end

    def self.relax
        @@fields.each do |field|
field.chill
        end

    end



end