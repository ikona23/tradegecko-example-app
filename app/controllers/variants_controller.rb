class VariantsController < ApplicationController
  def show
    @variant = gecko.Variant.find(params[:id])
  end
end
