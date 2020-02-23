class Dog
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all.each do |dog|
            puts dog.name
        end
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        self.all
    end

    def save
        @@all << self
    end
end