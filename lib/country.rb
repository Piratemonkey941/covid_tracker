class Country
    attr_accessor :name, :confirmed_cases, :overall_deaths, :recoveries
    @@countries = []

    def initialize(country_name, country_cases, country_deaths, country_recoveries)
        @name = country_name
        @confirmed_cases = country_cases
        @overall_deaths = country_deaths
        @recoveries = country_recoveries

        @@countries << self
    end

    #class method
    def self.all
        @@countries
    end
end

usa = Country.new("USA", 10, 0, 10)

puts "There are #{usa.confirmed_cases} cases in #{usa.name} with #{usa.overall_deaths} deaths and #{usa.recoveries} recoveries"

puts Country.all
    