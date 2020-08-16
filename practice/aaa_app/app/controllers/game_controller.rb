class GameController < ApplicationController
  def new
  	@game = Game.new
  end

 def create
 	game = Game.new(game_params)
 	game.save
 	redirect_to '/game'
 end

 def index
 	@game = Game.all
 end

 def show
 	@game = Game.find(params[:id])
 end

 def edit
 	@game = Game.find(params[:id])
 end

 def update
 	game = Game.find(params[:id])
 	game.update(game_params)
 	redirect_to '/top'
 end

 def destroy
 	game = Game.find(params[:id])
 	game.destroy
 	redirect_to '/game'
 end

    private
    def game_params
      params.require(:game).permit(:name, :weapon, :category, :dateils, :image)
    end
end
