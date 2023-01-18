require 'rails_helper'

RSpec.describe 'favorite endpoint' do
    it ' can add to favorites ' do
        user = User.create(name: "Goat", email: "GreatestOfAllTime@gmail.com")
        favorite = {
        "api_key": user.api_key,
        "country": "thailand",
        "recipe_link": "https://www.tastingtable.com/.....",
        "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)"
        }

        headers = { "CONTENT_TYPE" => "application/json" }

        post "/api/v1/favorites", headers: headers, params: JSON.generate(favorite)

        expect(response).to be_successful
        expect(response.status).to eq(201)
    end

end