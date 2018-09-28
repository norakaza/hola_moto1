class UsersController < ApplicationController
  def index
    @users = User.all      # GET /restaurants
  end

  def show
    @user = User.find(params[:id])     # GET /restaurants/:id
  end

  def new           # GET /restaurants/new
  end

  def create        # POST /restaurants
  end

  def edit          # GET /restaurants/:id/edit
  end

  def update        # PATCH /restaurants/:id
  end

  def destroy       # DELETE /restaurants/:id
  end
end
