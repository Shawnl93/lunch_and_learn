class CountryService
    def self.conn
        Faraday.new("https://restcountries.com")
    end

    def self.random_country
        response = conn.get("/v2/all?fields=name")
        data = JSON.parse(response.body, symbolize_names: true)
        data.shuffle.first
    end
end
