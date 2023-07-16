class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ index show ]
  # GET /categories or /categories.json
  def index
    @categories = Category.all
  end

  # GET /categories/1 or /categories/1.json
  def show
  end
end
