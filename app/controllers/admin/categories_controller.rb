class Admin::CategoriesController < ApplicationController
  layout 'admin'
  before_action :set_category, only: %i[ show edit update destroy ]

  # GET /categories or /categories.json
  def index
    @categories = Category.all
  end

  # GET /categories/1 or /categories/1.json
  def show
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories or /categories.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to admin_categories_path, success: { title: @category.name, body: t('admin.categories.create.success.body') } }
        format.turbo_stream do
          flash.now[:success] = { title: @category.name, body: t('admin.categories.create.success.body') }
          render 'admin/categories/turbo_streams/create'
        end
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1 or /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to admin_categories_path, success: { title: @category.name, body: t('admin.categories.update.success.body') } }
        format.turbo_stream do
          flash.now[:success] = { title: @category.name, body: t('admin.categories.update.success.body') }
          render 'admin/categories/turbo_streams/update'
        end
        format.json { render :show, status: :ok, location: admin_category_path(@category) }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1 or /categories/1.json
  def destroy
    name = @category.name
    @category.destroy

    respond_to do |format|
      format.html { redirect_to admin_categories_url, alert: { title: t('admin.categories.destroy.success.title', name: name), body: t('admin.categories.destroy.success.body')} }
      format.turbo_stream do
        flash.now[:success] = { title: t('admin.categories.destroy.success.title', name: name), body: t('admin.categories.destroy.success.body')}
        render 'admin/categories/turbo_streams/destroy'
      end
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:name, :parent_id, :level, :icon, :main)
    end
end
