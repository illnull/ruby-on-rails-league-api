class Mastery < ApplicationRecord
  belongs_to :summoner

  validates :championId, :championLevel, :championPoints, presence: true
end
