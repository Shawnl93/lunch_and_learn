require 'rails_helper'

RSpec.describe 'get favorites' do
    it "can get a favorite" do
        user = User.create!(name: "Arizona", email: "greentea@gmail.com")

        recipe_1 = Favorite.create!(country: "Taiwan" ,recipe_link: "TaiwanNotThailand.com", recipe_title: "Beef noodle soup", user_id: user.id)
        recipe_2 = Favorite.create!(country: "Taiwan" ,recipe_link: "TaiwanNotThailand.com", recipe_title: "Hot Pot Sticky Rice Dumpling", user_id: user.id)
        recipe_3 = Favorite.create!(country: "Taiwan" ,recipe_link: "TaiwanNotThailand.com", recipe_title: "Beef noodle soup", user_id: user.id)

        params = {'api_key': "#{user.api_key}"}

        headers = { "CONTENT_TYPE" => "application/json" }

        get "/api/v1/favorites", headers: headers, params: params

        expect(response).to be_successful

        favorite = JSON.parse(response.body, symbolize_names: true)
        expect(response.status).to eq(200)
        expect(favorite).to be_a(Hash)
        expect(favorite[:data]).to be_a(Array)
        expect(favorite[:data][0]).to have_key(:id)
        expect(favorite[:data][0]).to have_key(:type)
        expect(favorite[:data][0]).to have_key(:attributes)
        expect(favorite[:data][0][:attributes]).to have_key(:recipe_title)
        expect(favorite[:data][0][:attributes]).to have_key(:recipe_link)
        expect(favorite[:data][0][:attributes]).to have_key(:country)
        expect(favorite[:data][0][:attributes]).to have_key(:created_at)
    end
end