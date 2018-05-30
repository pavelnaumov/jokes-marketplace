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

    if @joke.update(params_joke)
     redirect_to admin_jokes_path, notice: 'Joke was successfully updated.'
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

 private

 def params_joke
  params.require(:joke).permit(:title, :description, :rating, :user_id)
  end
end
