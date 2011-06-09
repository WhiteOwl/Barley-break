class GameController < ApplicationController

  def index


  end

  def update
    @game = Game.find(params[:id])
    point = params[:point]
    @game.move_it(point)
   render "show"
  end

  def create
    @game = Game.new
    @game.fill_points
    if @game.save
      redirect_to game_path(@game.id)
    else
      render new_game_path
    end
  end

  def show
    @game = Game.find(params[:id])
  end


end
