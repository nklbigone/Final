class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
    def index
      if params[:term]
        @users = User.where('first_name LIKE ? or last_name LIKE ?', "%#{params[:term]}%", "%#{params[:term]}%").page(params[:page])
        else
          @users = User.all.page(params[:page])
        end
      end

    def show
    end
  
    def destroy
        @user.destroy
        redirect_to users_url, notice: 'User was successfully destroyed.'
    end
  
    private
    def set_user
      @user = User.find(params[:id])
    end
  end
