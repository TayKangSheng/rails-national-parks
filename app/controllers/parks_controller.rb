class ParksController < ApplicationController

  def index
    @parks = Park.all.reverse

    respond_to do |format|
      format.html
      format.json { render json: @parks }
    end
  end

  def create
    @new_park = Park.new(park_params)
    if @new_park.save
      respond_to do |format|
        format.html { redirect_to parks_path }
        format.json { render json: { status: 200, message: 'OK' } }
      end
    else
      render 'new'
    end
  end

  def new
    @new_park = Park.new
  end


  def show
    @park = Park.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @park }
    end
  end

  def edit
    @edit_park = Park.find_by(id: params[:id])
  end

  def update
    @edit_park = Park.find(park_params[:id])

    if @edit_park.update( name: park_params[:name], description: park_params[:description], picture: park_params[:picture])
      respond_to do |format|
        format.html { redirect_to park_path(@edit_park.id) }
        format.json { render json: { status: 200, message: "OK" } }
      end
    else
      render 'edit'
    end
  end

  def destroy
    Park.find(params[:id]).delete
    respond_to do |format|
      format.html { redirect_to parks_path }
      format.json { render json: { status: 200, message: "Deleted" } }
    end
  end

  private

  def park_params
    params.require(:park).permit(:id, :name, :description, :picture)
  end

end
