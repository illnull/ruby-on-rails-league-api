# frozen_string_literal: true

class Summoner < ApplicationRecord
  belongs_to :player
  has_many :masteries
end
