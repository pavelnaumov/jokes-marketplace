class Admin::BoughtJokesController < ApplicationController
  before_action :set_bought_joke, only: [:show, :destroy]

  def index

  end

  def show
    
  end

  def destroy

  end

  def create
    
  end


  private

  def set_joke
    @joke = Joke.find(params[:joke_id])
  end

  def set_bought_joke
    @bought_joke = BoughtJoke.find(params[:id])
  end
end