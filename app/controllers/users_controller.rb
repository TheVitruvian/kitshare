class UsersController < ApplicationController
  # stuff for cancancan
  # load_and_authorize_resource
  # before_filter :authenticate_user!, except: [:index, :show]

  # GET /users
  # GET /users.json
  def index

  end

  def show
    @user = User.find(params[:id])

  end

  def profile
    @user = current_user
  end




end