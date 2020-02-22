# frozen_string_literal: true

class Player < ApplicationRecord
  has_one :summoner

  validates :name, :address, :phone_number, :email, presence: true
end
