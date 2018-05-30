class Admin::JokesController < ApplicationController
  def index
    @jokes = current_user.jokes
  end

  def edit
    # @joke = current_user.joke
    @joke = Joke.find(params[:id])
  end

  def update
    #@joke = current_user.joke
    @joke = Joke.find(params[:id])

    if @joke.update(joke_params)
     redirect_to @joke, notice: 'Joke was successfully updated.'
   else
     render :new
   end
 end

 def destroy
  #@joke = current_user.joke
  @joke = Joke.find(params[:id])

  @joke.destroy

  redirect_to admin_jokes_path
 end
end
