# frozen_string_literal: true

class Summoner < ApplicationRecord
  belongs_to :player
  has_many :masteries
  has_many :leaderboards
  has_many :leaderboards, through: :summoners_leaderboads

  validates :summonerId, :accountId, :summonerName, :summonerLevel, presence: true
end
