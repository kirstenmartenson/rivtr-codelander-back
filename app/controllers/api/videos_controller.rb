class Api::VideosController < ApplicationController

  def index
    @videos = Video.all
    render 'index.json.jbuilder'
  end

  def create
    @video = Video.new(
      name: params[:name],
      category: params[:category],
      description: params[:description],
      author: params[:author],
      video_url: params[:video_url],
      tools: params[:tools],
      shopping_list: params[:shopping_list]
    )

    if @video.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @video.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @video = Video.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @video = Video.find(params[:id])

    @video.name = params[:name] || @video.name
    @video.category = params[:category] || @video.category
    @video.description = params[:description] || @video.description
    @video.video_url = params[:video_url] || @video.video_url

    if @video.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @video.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    video = Video.find(params[:id])
    video.destroy
    render json: {message: "Successfully destroyed video"}
  end
end
