class HomeController < ApplicationController
  def index
    if user_signed_in?
      @users = User.all
      @tasks = Task.where(user_id: current_user.id)  
    end
  end
end
