class SummonersLeaderboard < ApplicationRecord
    belongs_to :leaderboards
    belongs_to :summoner
end
