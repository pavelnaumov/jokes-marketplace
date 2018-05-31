class Admin::BoughtJokesController < ApplicationController
  before_action :set_bought_joke, only: [:show, :destroy]
  before_action :set_joke, only: [:create]

  def index

  end

  def show

  end

  def destroy
    @bought_joke.destroy
    redirect_to admin_joke_bought_jokes_path
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