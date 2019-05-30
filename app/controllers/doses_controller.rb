class DosesController < ApplicationController
  def new
    # we need @cocktail in our 'simple_form_for'
    @cocktail    = Cocktail.find(params[:cocktail_id])

    # we need @ingredients in our 'simple_form_for'
    @ingredients = Ingredient.all

    @dose        = Dose.new
  end

  def create
    # we need 'cocktail_id' to asssociate dose with corresponding cocktail
    @cocktail        = Cocktail.find(params[:cocktail_id])
    @dose            = Dose.new(dose_params)
    @dose.cocktail   = @cocktail

    # we need 'ingredient_id' to asssociate dose with corresponding ingredient
    # @ingredient      = Ingredient.find(dose_params[:ingredient_id])
    # @dose.ingredient = @ingredient
    # => no, we do not need to define ingredient here, ask why!

    @dose.save

    if @dose.save
    # 3. Redirige vers la fiche de cocktail cree
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    # redirect_to cocktail_path(@cocktail), how to do to make it work?
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
    # lie au formulaire, au nom des imputs (donc pas besoin de cocktail_id)
  end
end
