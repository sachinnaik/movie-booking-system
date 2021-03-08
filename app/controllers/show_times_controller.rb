class ShowTimesController < ApplicationController
  def edit
    @show_time = ShowTime.where(id: params[:id]).includes([:theatre, :movie])
  end

  def update_seats
    show_time = ShowTime.find(params[:show_time_id])
    params[:seats].each do |s|
      splt = s.split(".")
      row = splt[0]
      seat = splt[1]
      show_time.seats[row][seat] = current_user.id
    end
    if show_time.save
      redirect_to movies_path
    end
  end
end
