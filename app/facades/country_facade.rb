class CountryFacade
    def self.random_country
        data = CountryService.random_country
        country = data[:name]
    end
end