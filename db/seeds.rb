# frozen_string_literal: true

Playeer.destroy_all

require 'net/http'
require 'json'
require 'pp'

AUTH_KEY = 'RGAPI-e8c5f0a8-f385-4705-ab4f-199e7a1998d4'

url = "https://na1.api.riotgames.com/lol/league-exp/v4/entries/RANKED_SOLO_5x5/CHALLENGER/I?page=1&api_key=#{AUTH_KEY}"
uri = URI(url)
response = Net::HTTP.get(uri)
TOP_50 = 50

TOP_50.times do
  summoneraccountid = JSON.parse(response).each do |id|
    id['summonerId']
  end
  player = Playeer.create(name: Faker::Games::HalfLife.character,
                          address: Faker::Address.full_address,
                          phone_number: Faker::PhoneNumber.cell_phone,
                          email: Faker::Internet.email)

  #   url = "https://na1.api.riotgames.com/lol/summoner/v4/summoners/#{summoneraccountid}?api_key=#{AUTH_KEY}"

  #   JSON.parse(response).each do |data|
  #     player.summoners.create(summonerId: data['summonerId'],
  #                             accountId: data['leagueId'],
  #                             summonerName: data['summonerName'],
  #                             profileIconId: data['profileIconId'],
  #                             summonerLevel: data['summonerLevel'])
  #   end
end

puts "Created #{Playeer.count} Player."
# puts "Created #{Summoner.count} Summoner."
