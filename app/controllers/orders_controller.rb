class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]
  before_action :find_item, only: [:index, :create]
  before_action :check_different_user, only: [:index, :create]

  def index
    @order = Order.new
  end

  def create
  end

  private

  def find_item
    @item = Item.find(params[:item_id])
  end

  def check_different_user
    return if current_user.id != @item.user_id

    redirect_to root_path
  end
end
