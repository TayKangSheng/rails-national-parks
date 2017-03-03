class ParksController < ApplicationController

  def index
    @parks = Park.all

    respond_to do |format|
      format.html
      format.json { render json: @parks }
    end
  end

  def create

  end

  def new
    #code
    @new_park = Park.new
  end

  def edit
    #code
  end

  def show
    #code
    @park = Park.find(params[:id])

    # byebug

    respond_to do |format|
      format.html
      format.json { render json: @park }
    end
  end

  def update
    #code
  end

  def destroy
    #code
  end

end
