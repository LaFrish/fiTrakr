class ChallengesController < ApplicationController

  def index
    @challenges = Challenge.all
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.create!(challenge_params)

    redirect_to challenges_path(@challenge)
  end

  def show
    @challenge = Challenge.find(params[:id])
  end

  def edit
    @challenge = Challenge.find(params[:id])
  end

  def update
    @challenge = Challenge.find(params[:id])
    @challenge = update(challenge_params)

    redirect_to challenge_path(@challenge)
  end

  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy
    redirect_to challenges_path(@challenge)
  end

  private
  def challenge_params
    params.require(:challenge).permit(:challenge_name, :users_id, :calendar_id, :created_at, :updated_at)
  end
end
