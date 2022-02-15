class UsersController < ApplicationController
    def show
        @user  = User.find(params[:id])
    end
    
    def edit
        @user  = User.find(params[:id])
    end
    
    def update
        current_user.update(user_params)
        redirect_to current_user
    end
    
    private
    def user_params
    params.require(:user).permit(:username, :date_of_birth,
                                    :address, :email, :phone)
    end
end