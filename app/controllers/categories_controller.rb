class CategoriesController < ApplicationController

  before_filter :authenticate_admin!
  layout "application_search"

  def index
    @categories = Category.all
    respond_with @categories
  end

  def new
    @category = Category.new
    respond_with @category
  end

  def show
    @category = Category.find(params[:id])
    respond_with @category
  end

  def edit
    @category = Category.find(params[:id])
    respond_with @category
  end

  def create
    @category = Category.new(params[:category])
    @category.save
    respond_with @category
  end

  def update
    @category = Category.find(params[:id])
    @category.update_attributes(params[:category])
    respond_with @category
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    respond_with category
  end
end
