class UsersController < ApplicationController
  # #stuff for cancancan
  # load_and_authorize_resource
  # before_filter :authenticate_user!, except: [:index, :show]

  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def show
  end
end