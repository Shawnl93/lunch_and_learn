require 'rails_helper'

RSpec.describe LearningFacade do
    it '.learn' do
        data = LearningFacade.learn("thailand")
        expect(data).to be_an_instance_of(Youtube)
    end
end