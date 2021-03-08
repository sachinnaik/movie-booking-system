class MoviesController < ApplicationController
  def index
    @movies = Movie.includes(:show_times)
  end

  def show
    show_times = ShowTime.select(:id, :movie_id, :theatre_id, :start_time, :show_date)
                         .where(movie_id: params[:id]).where("show_date >= ?", Date.today)
                         .order(:show_date, :id)
                         .includes([:theatre, :movie])
    @show_times = show_times.group_by { |d| d[:show_date] }
  end
end
