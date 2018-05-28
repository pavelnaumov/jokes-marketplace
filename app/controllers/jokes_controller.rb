class JokesController < ApplicationController

  before_action :set_joke, only: [:show, :edit, :update, :destroy]


  def index
    
  end

  def show
    
  end

  def new
  end

  def create
  end

  def edit
    @joke = Joke.find(params[:id])
  end

  def update
     
    respond_to do |format|
      if @joke.update(joke_params)
        redirect_to @joke, notice: 'Joke was successfully updated.'
      else
        render :new
      end
    end
  end

  def destroy

  end

  private

  def set_joke
    @joke = Joke.find(params[:id])
  end

  def params_joke
    params.require(:joke).permit(:title, :description, :rating)
  end
end
