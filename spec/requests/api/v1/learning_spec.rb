require 'rails_helper'

RSpec.describe 'learning endpoint' do
    it "returns learning resources by country" do
        get "/api/v1/learning_resources?country=laos"

        expect(response).to be_successful
        learning = JSON.parse(response.body, symbolize_names: true)
        expect(learning[:data]).to be_a(Hash)
        expect(learning[:data]).to have_key(:id)
        expect(learning[:data]).to have_key(:type)
        expect(learning[:data]).to have_key(:attributes)
        expect(learning[:data][:attributes]).to have_key(:country)
        expect(learning[:data][:attributes]).to have_key(:videos)
        expect(learning[:data][:attributes]).to have_key(:images)
        expect(learning[:data][:attributes][:videos]).to have_key(:title)
        expect(learning[:data][:attributes][:videos]).to have_key(:youtube_video_id)
        expect(learning[:data][:attributes][:images][0]).to have_key(:alt_tag)
        expect(learning[:data][:attributes][:images][0]).to have_key(:url)
    end
end