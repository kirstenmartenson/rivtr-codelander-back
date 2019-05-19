class Api::FavoritesController < ApplicationController

  before_action :authenticate_user

  def index
    @favorites = Favorite.all
    render 'index.json.jbuilder'
  end

  def create
    @favorite = Favorite.new(
      # user_id: current_user.id,
      user_id: current_user.id,
      video_id: params[:video_id]
    )

    if @favorite.save #happy path
      render 'show.json.jbuilder'
    else #sad path
      p @favorite.errors.full_messages
      render json: {errors: @favorite.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    render json: {message: "Successfully destroyed a favorite pairing"}
  end
end

