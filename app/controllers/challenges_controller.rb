class ChallengesController < ApplicationController
  def show
    load_challenge
  end

  private

  def load_sbc
    @sbc = Sbc.find params[:sbc_id]
  end

  def load_challenges
    @challenges = @sbc.challenges.all
  end

  def load_challenge
    @challenge = Challenge.find(params[:id])
  end
end
