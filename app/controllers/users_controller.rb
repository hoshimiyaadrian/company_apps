class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit]
    def index
        @users = User.all
    end
    
    def show
    end
    
    def edit
    end
    
    def update
        if current_user.update(user_params)
            redirect_to current_user    
        end
    end
    
    private
    def set_user
        @user  = User.find(params[:id])
    end
        
    def user_params
    params.require(:user).permit(:username, :date_of_birth,
                                    :address, :email, :phone)
    end
end
