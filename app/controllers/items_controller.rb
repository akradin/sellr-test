class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]

  def set_item
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.all

    render json: @items
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      render json: @item, status: :created
    else
      render json: @item, status: :unproccesible_entity
    end
  end

  def item_params
    params.require(:item).permit(:name)
  end
end
