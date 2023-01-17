class Api::V1::LearningResourcesController < ApplicationController
    def index
        render json: LearningResourceSerializer.new(LearningFacade.learn(params[:country]))
    end
end