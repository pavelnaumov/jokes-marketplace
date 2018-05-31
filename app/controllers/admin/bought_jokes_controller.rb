class Admin::BoughtJokesController < ApplicationController
  before_action :set_bought_joke, only: [:show, :destroy]
  before_action :set_joke, only: [:create, :destroy]

  def index
    @bought_jokes = current_user.bought_jokes
  end

  def show

  end

  def destroy

    @bought_joke.destroy
    redirect_to admin_joke_bought_jokes_path
  end

  # def new
  #   @bought_joke = BoughtJoke.new
  # end

  def create
    @bought_joke = BoughtJoke.new
    @bought_joke.user = current_user
    @bought_joke.joke = Joke.find(params[:joke_id])
    @bought_joke.save

    redirect_to admin_joke_bought_jokes_path(params[:joke_id])
  end

  private

  def set_joke
    @joke = Joke.find(params[:joke_id])
  end

  def set_bought_joke
    @bought_joke = BoughtJoke.find(params[:id])
  end
end
