class UnsplashService
    def self.conn
        Faraday.new("https://api.unsplash.com") do |f|
            f.params["client_id"] = ENV["unsplash_key"]
        end
    end

    def self.image(country)
        response = conn.get("/search/photos/?query=#{country}&page=1&per_page=10")
        data = JSON.parse(response.body, symbolize_names: true)
    end
end

