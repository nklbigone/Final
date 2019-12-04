class UsersController < ApplicationController
  def index
  if params[:term]
    @users = User.where('first_name LIKE ? or last_name LIKE ?', "%#{params[:term]}%", "%#{params[:term]}%").page(params[:page])
    else
      @users = User.all.page(params[:page])
    end
  end
end
