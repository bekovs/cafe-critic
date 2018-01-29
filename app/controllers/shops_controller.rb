class ShopsController < ApplicationController
  def index
    @shops = Shop.all
    @categories = Category.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def edit
    if user_signed_in?
      @shop = Shop.find(params[:id])
    else
      redirect_to root_path
    end
  end

  def new
    if user_signed_in?
      @shop = Shop.new
    else
      redirect_to root_path
    end
  end


  def create
    if user_signed_in?
      @shop = Shop.new(shop_params)
      if @shop.save
        flash[:success] = "Shop created"
        redirect_to root_path
      else
        flash[:error] = "Error : Invalid Shop title"
        render "new"
      end
    else
      redirect_to root_path
    end
  end

  def update
    if current_user == @user or current_user.admin?
      @shop = Shop.find(params[:id])

      if @shop.update(shop_params)
        redirect_to @shop
      else
        render 'edit'
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    if current_user == @user or current_user.admin?
      Shop.destroy(params[:id])
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def shop_params
    params.require(:shop).permit(:title, :image, :user_id, :category_id)
  end

end
