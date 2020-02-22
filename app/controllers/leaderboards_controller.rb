# frozen_string_literal: true

class LeaderboardsController < ApplicationController
  def index
    @leaderboards3 = Leaderboard.where(season: 3).order(leaguePoints: :desc)
    @leaderboards2 = Leaderboard.where(season: 2).order(leaguePoints: :desc)
    @leaderboards1 = Leaderboard.where(season: 1).order(leaguePoints: :desc)
  end
end
