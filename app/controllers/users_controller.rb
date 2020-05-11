class UsersController < ApplicationController
    def index
        users = user.all
        render json: users
    end

    def create
        user = user.new(user_params)
        if user.save
            render json: user
        else
            render json: {"message": "user couldn't be created."}
        end
    end

    def update
        user = user.find(params[:id])
        if user.update_attributes(user_params)
            render json: user
        else
            render json:{"message": "Something went wrong!"}
        end
    end

    def destroy
        user = user.find(params[:id])
        if user.destroy
            render json: user
        else
            render json:{"message": "Couldn't delete user."}
        end
    end

    def user_params
        params.require(:task).permit{:username, :email, :password, :password_confirmation}
    
    end
end
