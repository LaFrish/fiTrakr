class FoodsController < ApplicationController
  def index
        @foods = Food.all
    # @user = User.find(params[:user_id])

  end

  def new
    @user = User.find(params[:user_id])
    @food = Food.new

  end

  def create
    @user = User.find(params[:user_id])
    @food = @user.food.create!(food_params)

    redirect_to user_foods_path(@user)
  end

  def show
    @user = User.find(params[:user_id])
    @food = Food.find(params[:id])
  end

  def edit
    @user = User.find(params[:user_id])
    @food = Food.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @food = Food.find(params[:id])
    @food.update(food_params)

    redirect_to user_foods_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @food = Food.find(params[:id])
    @food.destroy

    redirect_to user_foods_path(@user)
  end

  private
  def food_params
    params.require(:food).permit(:meal, :food_item, :calories)
  end
end
