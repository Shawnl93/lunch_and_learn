class Api::V1::FavoritesController < ApplicationController
  def create
    user = User.find_by(api_key: params[:api_key])
    if Favorite.new(country: params[:country], recipe_link: params[:recipe_link], recipe_title: params[:recipe_title], user_id: user.id).save
        render json: { 'success': 'Favorite added successfully' }, status: 201
    else
        render json: ErrorSerializer.api_error, status: 400
    end
  end

  def index
    user = User.find_by(api_key: params[:api_key])
    favorites = user.favorites
    render json: FavoriteSerializer.new(favorites), status: 200
  end

#  private

#     def favorite_params
#         params.permit(:api_key, :country, :recipe_link, :recipe_title)
#     end
end