class Api::V1::RecipesController < ApplicationController
    def index
        if params[:country]
            render json: RecipesSerializer.new(RecipesFacade.recipes(params[:country]))
        else
            country = CountryFacade.random_country
            render json: RecipesSerializer.new(RecipesFacade.recipes(country))
        end
    end
end