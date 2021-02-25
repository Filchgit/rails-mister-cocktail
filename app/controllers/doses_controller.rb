class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
  end

  def edit
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_dose
    @dose = Dose.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def dose_params
    params.require(:dose).permit(:description)
  end
end
