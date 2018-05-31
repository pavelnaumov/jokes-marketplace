class JokesController < ApplicationController

  before_action :set_joke, only: [:show, :edit, :update, :destroy]
  def index
    @jokes = Joke.all
  end


  def new
    @joke = Joke.new
  end

  def create
    @joke = Joke.new(params_joke)
    @joke.user = current_user
    if @joke.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def params_joke
    params.require(:joke).permit(:title, :description, :rating, :user_id)
  end

  def set_joke
    @joke = Joke.find(params[:id])
  end
end
