class LearningService
    def self.conn
        Faraday.new("https://www.googleapis.com") do |f|
            f.params["key"] = ENV["youtube_api_key"]
            f.params["channelId"] = "UCluQ5yInbeAkkeCndNnUhpw"
            f.params["part"] = "snippet"
        end
    end

    def self.learn(country)
        response = conn.get("/youtube/v3/search?q=#{country}")
        data = JSON.parse(response.body, symbolize_names: true)
    end
end

