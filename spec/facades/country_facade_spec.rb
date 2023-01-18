require 'rails_helper'

RSpec.describe CountryFacade do
    it '.random_country' do
        data = CountryFacade.random_country
        expect(data).to be_an_instance_of(String)
    end
end