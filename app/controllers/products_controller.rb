class ProductsController < ApplicationController
  def create
    @product = Products.new(products_params)
    @product.save
    respond_to do |format|
        if @product.save
        format.html { redirect_to @category, notice: 'Comment was successfully created.' }
        else
        format.html { redirect_to @category, alert: 'An error occurred while trying to save Comment.' }
        end
      end
    end

  def products_params
    params.require(:products).permit(:name, :price)
  end
end
