class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    #gives the movie the user_id
    @movie[:user_id] = session[:user_id]
    if @movie.save
      redirect_to user_path(session[:user_id])
    end

  end

  private

  def movie_params
    params.require(:movie).permit(:fav_movie)
  end

end
