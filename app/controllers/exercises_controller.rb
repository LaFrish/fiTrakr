class ExercisesController < ApplicationController

  def index
    # @user = User.find(params[:user_id])
    @exercises = Exercise.all
  end

  def new
    @user = User.find(params[:user_id])
    @exercise = Exercise.new

  end

  def create
    @user = User.find(params[:user_id])
    @exercise = @user.exercise.create!(exercise_params)

    redirect_to user_exercises_path(@user)
  end

  def show
    @user = User.find(params[:user_id])
    @exercise = Exercise.find(params[:id])
  end

  def edit
    @user = User.find(params[:user_id])
    @exercise = Exercise.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @exercise = Exercise.find(params[:id])
    @exercise.update(exercise_params)

    redirect_to user_exercises_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @exercise = Exercise.find(params[:id])
    @exercise.destroy

    redirect_to user_exercises_path(@user)
  end

  private
  def exercise_params
    params.require(:exercise).permit(:exercise_item, :calories_burned)
  end
end
