# frozen_string_literal: true

class LeaderboardsController < ApplicationController
  def index
    @leaderboards = Leaderboard.all
  end
end
