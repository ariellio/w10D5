class Api::PokemonController < ApplicationController

  def index
    @pokemon = Pokemon.all
    render :index
  end

  def show 
    sleep 0.5
    @pokemon = Pokemon.find(params[:id])
    render :show
  end

  def show
    @pokemon = Pokemon.includes(:moves, :items).find_by(id: params[:id])
    render :show
    # if @pokemon
    #   render :show
    # else
    #   # errors
    #   render :index
    # end
  end
end