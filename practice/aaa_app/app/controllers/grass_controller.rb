class GrassController < ApplicationController
  def new
  	@grass = Grass.new
  end

  def create
  	grass = Grass.new(grass_params)
  	grass.save
  	redirect_to '/top'
  end

  def index
    @grasses = Grass.all
  end

  def show
    @grass =Grass.find(params[:id])
  end

  def edit
    @grass = Grass.find(params[:id])
  end

  def update
    grass = Grass.find(params[:id])
    grass.update(grass_params)
    redirect_to '/grass'
  end
private
  def grass_params
  	params.require(:grass).permit(:title, :english_name, :date)
  end
end
