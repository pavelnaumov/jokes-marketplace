class Admin::JokesController < ApplicationController
  def index
    @jokes = current_user.jokes
  end
end
