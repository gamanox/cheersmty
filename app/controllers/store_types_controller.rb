class StoreTypesController < ApplicationController
  before_action :set_store_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @store_types = StoreType.all
    respond_with(@store_types)
  end

  def show
    respond_with(@store_type)
  end

  def new
    @store_type = StoreType.new
    respond_with(@store_type)
  end

  def edit
  end

  def create
    @store_type = StoreType.new(store_type_params)
    @store_type.save
    respond_with(@store_type)
  end

  def update
    @store_type.update(store_type_params)
    respond_with(@store_type)
  end

  def destroy
    @store_type.destroy
    respond_with(@store_type)
  end

  private
    def set_store_type
      @store_type = StoreType.find(params[:id])
    end

    def store_type_params
      params.require(:store_type).permit(:name, :description)
    end
end
