class JokesController < ApplicationController

  before_action :set_joke, only: [:show, :edit, :update, :destroy]

  def index

    if params[:query].present?
      @jokes = Joke.where("category ILIKE ?", "%#{params[:query]}%").where.not(user: current_user)
    else
      @jokes = Joke.where.not(user: current_user)
    end
    @bought_jokes = current_user.bought_jokes.map(&:joke)
    @jokes = @jokes.reject { |joke| @bought_jokes.include? joke }
  end


  def new
    @joke = Joke.new
  end

  def create
    @joke = Joke.new(params_joke)
    @joke.user = current_user
    if @joke.save
      redirect_to admin_jokes_path
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
