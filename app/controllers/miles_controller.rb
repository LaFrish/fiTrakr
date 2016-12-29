class MilesController < ApplicationController


  def index
    @miles = Mile.all
    #  @user = User.find(params[:user_id])


  end

  def new
    @user = User.find(params[:user_id])
    @mile = Mile.new
  end

  def create
    @user = User.find(params[:user_id])
    @mile = @user.miles.create!(mile_params)

    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:user_id])
    @mile = Mile.find(params[:id])
  end

  def edit
    @user = User.find(params[:user_id])
    @mile = Mile.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @mile = Mile.find(params[:id])
    @mile.update(mile_params.merge([:id]))

    redirect_to user_path(@user)
  end

  def destroy
    @mile = Mile.find(params[:id])
    @mile.destroy
    redirect_to user_path(@user)
  end

  private
  def mile_params
    params.require(:mile).permit(:date, :exercises, :foods, :photos, :img_url, :data_type, :tag, :user_id, :challenge_id, :created_at, :updated_at, :user_id, :mile_id)
  end


end
