class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @user = User.first

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def show
    @user= User.find(params[:id])

  end
end