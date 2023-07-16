class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ index show ]
  before_action :set_product, only: %i[ show edit update destroy ]
  before_action :set_category, only: %i[ index new create ]
  # GET /products or /products.json
  def index
    @products = @category.products if @category.present?
    @products = Product.all unless @category.present?
  end

  # GET /products/1 or /products/1.json
  def show
  end

  private
    def set_category
      return unless params[:category_id].present?
      @category = Category.friendly.find(params[:category_id])
    end
end
