class EquipmentsController < ApplicationController
  #stuff for cancancan
  # load_and_authorize_resource
  # before_filter :authenticate_user!, except: [:index, :show]

  # GET /users
  # GET /users.json
  def index
    @equipments = Equipment.all
    
    respond_to do |format|
      format.html
      format.js
      format.json { render json: @equipments }
    end
  end

  def show
  @equipment = Equipment.find params[:id]
  end

  def new
  end

  def search
  end
end

   