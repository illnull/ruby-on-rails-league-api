# frozen_string_literal: true

class Summoner < ApplicationRecord
  belongs_to :player
  has_many :masteries
  has_many :summoners_leaderboads
  has_many :leaderboards, through: :summoners_leaderboads

  validates :summonerId, :accountId, :summonerName, :summonerLevel, presence: true
end
