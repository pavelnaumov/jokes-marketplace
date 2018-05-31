class JokesController < ApplicationController
  before_action :set_joke, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @jokes = Joke.where("category ILIKE ?", "%#{params[:query]}%")
    else
      @jokes = Joke.all
    end
  end

  def show
    @joke = Joke.find(params[:id])
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
