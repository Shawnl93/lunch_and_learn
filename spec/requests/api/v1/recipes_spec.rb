require 'rails_helper'

RSpec.describe 'recipes endpoint', :vcr do
    it "returns recipes by country", :vcr do
       get "/api/v1/recipes?country=thailand" 
       
       expect(response).to be_successful

       recipe = JSON.parse(response.body, symbolize_names: true)
       expect(recipe[:data]).to be_a(Array)
       expect(recipe[:data][0]).to be_a(Hash)
       expect(recipe[:data][0]).to have_key(:id)
       expect(recipe[:data][0]).to have_key(:type)
       expect(recipe[:data][0]).to have_key(:attributes)
       expect(recipe[:data][0][:attributes]).to have_key(:title)
       expect(recipe[:data][0][:attributes]).to have_key(:url)
       expect(recipe[:data][0][:attributes]).to have_key(:country)
       expect(recipe[:data][0][:attributes]).to have_key(:image)

       expect(recipe[:data][0][:attributes]).to_not have_key(:yield)
       expect(recipe[:data][0][:attributes]).to_not have_key(:dietLabels)

    end

    it "randomize country if no input " do
       get "/api/v1/recipes"

       expect(response).to be_successful
       recipe = JSON.parse(response.body, symbolize_names: true)
       expect(recipe[:data]).to be_a(Array)
       expect(recipe[:data][0]).to be_a(Hash)
       expect(recipe[:data][0]).to have_key(:id)
       expect(recipe[:data][0]).to have_key(:type)
       expect(recipe[:data][0]).to have_key(:attributes)
       expect(recipe[:data][0][:attributes]).to have_key(:title)
       expect(recipe[:data][0][:attributes]).to have_key(:url)
       expect(recipe[:data][0][:attributes]).to have_key(:country)
       expect(recipe[:data][0][:attributes]).to have_key(:image)

       expect(recipe[:data][0][:attributes]).to_not have_key(:yield)
       expect(recipe[:data][0][:attributes]).to_not have_key(:dietLabels)
    end

    it "returns empty array if no recipes available", :vcr do
        get "/api/v1/recipes?country=" 

        expect(response).to be_successful

        recipe = JSON.parse(response.body, symbolize_names: true)
        
        expect(recipe[:data]).to eq([])
    end
end