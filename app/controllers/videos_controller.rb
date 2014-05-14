class VideosController < ApplicationController

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    @video[:user_id] = session[:user_id]
    binding.pry
    if @video.save
      redirect_to("/users")
    end
  end

  private

  def video_params
    params.require(:video).permit(:url)
  end
end
