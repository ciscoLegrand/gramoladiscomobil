class Admin::ProductsController < ApplicationController
  layout 'admin'
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

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    price = Price.new(amount: product_params[:pvp], vat: product_params[:tax].presence || 21.00)
    @product = Product.new(product_params.except(:pvp))
    @product.prices << price

    respond_to do |format|
      if @product.save
        format.html { redirect_to admin_product_url(@product),  success: { title: @product.name, body: "Product successfully created" } }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        @product.prices
                .first
                .update(amount: product_params[:pvp], vat: product_params[:tax].presence || 21.00)
        format.html { redirect_to admin_product_url(@product), success: { title: @product.name, body: "Product successfully updated" } }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to admin_products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.friendly.find(params[:id])
    end

    def set_category
      return unless params[:category_id].present?
      @category = Category.friendly.find(params[:category_id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product)
            .permit(:category_id, :name, :pvp, :stock, 
                    :meta_tags, :tax, :description, images: [])
            .compact_blank!
    end
end
