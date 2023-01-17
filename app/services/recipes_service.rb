class RecipesService
    def self.conn
        Faraday.new("https://api.edamam.com") do |f|
            f.params["app_key"] = ENV["edamam_search_key"]
            f.params["app_id"] = ENV["edamam_search_id"]
        end
    end

    def self.recipes(country)
        response = conn.get("/api/recipes/v2?type=public&q=#{country}")
        data = JSON.parse(response.body, symbolize_names: true)
    end
end
