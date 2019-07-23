class UnitedNationsNews::Headlines
    attr_accessor :title, :url, :author_name, :content

    @@all = []

    def initialize(hash)
        hash.each do |key, value|
        self.send("#{key}=", value)
        end
    end

    def save
        @@all << self
    end

    def self.create(hash)
        self.new(hash).tap {|obj| obj.save}
    end

    def self.create_from_collection(headlines_array)
        headlines_array.each do |hash|
            self.create(hash)
        end
    end

    def self.all
        @@all
    end
end