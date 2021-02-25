class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
  end

  def edit
  end
end
