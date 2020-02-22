# frozen_string_literal: true

class Leaderboard < ApplicationRecord
  has_many :summoners_leaderboads
  has_many :summoners, through: :summoners_leaderboads

  # validates :queueType, :wins, :losses, :leaguePoints, presence: true
end
