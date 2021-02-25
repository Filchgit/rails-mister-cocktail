class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[ show ]
  
  def index
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
       redirect_to new_cocktail_dose_path(@cocktail.id) 
    else
      render cocktails_new_path 
    end

  end


  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocktail
      @cocktail = Cocktail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cocktail_params
      params.require(:cocktail).permit(:name)
    end

end
