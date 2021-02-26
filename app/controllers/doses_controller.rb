class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    # just changed this hav'nt check

  end

  def create 
  
    @cocktail = Cocktail.find(params[:cocktail_id])
  
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      # redirect_to cocktail_path(@cocktail)
      redirect_to new_cocktail_dose_path(@cocktail)
    else
      
      render "cocktails/show"
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end


  # def edit
  # end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_dose
    #@dose = Dose.find(params[:id])
    params.require(:dose).permit(:description, :ingredient_id)
  end

  # Only allow a list of trusted parameters through.
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
