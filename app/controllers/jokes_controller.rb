class JokesController < ApplicationController
  before_action :set_joke, only: [:show, :edit, :update, :destroy]
  def index
  end

  def show
  end

  def new
    @joke = Joke.new
  end

  def create
    @joke = Joke.new(params_joke)
    @joke = Joke.new(params_joke)
    if @joke.save
      redirect_to joke_path(@joke)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def params_joke
    params.require(:joke).permit(:title, :description, :rating, :user_id)
  end

  def set_joke
    @joke = Joke.find(params[:id])
  end
end
