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
    @park = Park.new
  end

  def edit
    #code
  end

  def show
    #code
  end

  def update
    #code
  end

  def destroy
    #code
  end

end
