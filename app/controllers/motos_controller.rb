class MotosController < ApplicationController
  def index
    @motos = Moto.all
    if params[:query].present?
      sql_query = " \
      motos.brand LIKE :query \
      OR motos.name LIKE :query \
      OR motos.moto_type LIKE :query \
    "
    @motos = @motos.where(sql_query, query: "%#{params[:query]}%")
    else
      @motos = Moto.all
    end
  end

  def show
    @moto = Moto.find(params[:id])
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
