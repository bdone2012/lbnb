class VideosController < ApplicationController

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    half_url = video_params["url"].split("=")[1]
    desired_url = "http://www.youtube.com/v/#{half_url}"
    @video[:user_id] = session[:user_id]
    @video.update(url: desired_url)
    # binding.pry
    if @video.save
      redirect_to user_path(session[:user_id])
    end
  end

  private

  def video_params
    params.require(:video).permit(:url)
  end
end
