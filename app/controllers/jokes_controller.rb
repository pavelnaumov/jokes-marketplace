class JokesController < ApplicationController

  before_action :set_joke, only: [:show, :edit, :update, :destroy]
  
  def index
    @jokes = Joke.all
  end

  def show
    
  end

  def new
    @joke = Joke.new
  end

  def create
    @joke = Joke.new(joke_params)
    if @joke.save
      redirect_to joke_path(@joke)
    else
      render :new
    end
  end

  def edit
    
  end
  
  def update
      if @joke.update(joke_params)
        redirect_to @joke, notice: 'Joke was successfully updated.'
      else
        render :new
    end
  end

  def destroy

  end

  private

  def set_joke
    @joke = Joke.find(params[:id])
  end

  def joke_params
    params.require(:joke).permit(:title, :description, :rating, :user_id)
  end
end
