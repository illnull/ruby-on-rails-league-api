# frozen_string_literal: true

class Leaderboard < ApplicationRecord
  has_many :summoners_leaderboards

  # validates :queueType, :wins, :losses, :leaguePoints, presence: true
end
