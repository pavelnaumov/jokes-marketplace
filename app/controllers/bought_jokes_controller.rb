class BoughtJokesController < ApplicationController
  before_action :set_bought_joke, only: [:show, :destroy]

  def index

  end

  def show
    
  end

  def destroy

  end


  private

  def set_bought_joke
    @bought_joke.joke = Joke.find(params[:id])
  end
end