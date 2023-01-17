require 'rails_helper'

RSpec.describe 'user endpoint' do
    it "can create a  users" do
        user_params = {
                     "name": "Shawn Lee",
                     "email": "Shawn@gmail.com"
                     }

        headers = {"CONTENT_TYPE" => "application/json"}

        post "/api/v1/users", headers: headers, params: JSON.generate(user_params)
            
        expect(response).to be_successful
        data = JSON.parse(response.body, symbolize_names: true)
        expect(response.status).to eq(200)
        expect(data[:data]).to be_a(Hash)
        expect(data[:data]).to have_key(:id)
        expect(data[:data]).to have_key(:type)
        expect(data[:data]).to have_key(:attributes)
        expect(data[:data][:attributes]).to have_key(:name)
        expect(data[:data][:attributes]).to have_key(:email)
        expect(data[:data][:attributes]).to have_key(:api_key)

    end
end