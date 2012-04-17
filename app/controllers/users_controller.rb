class UsersController < ApplicationController
  def board
    session[:user_id] = 1
  end
end
