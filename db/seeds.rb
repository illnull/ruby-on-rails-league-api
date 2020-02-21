# frozen_string_literal: true

Mastery.destroy_all
Summoner.destroy_all
Player.destroy_all

require 'net/http'
require 'json'
require 'pp'

AUTH_KEY = 'RGAPI-e8c5f0a8-f385-4705-ab4f-199e7a1998d4'
SMURF_KEY = 'RGAPI-c6829e54-a303-42a0-b342-ec6e6f7631e8'

url = "https://na1.api.riotgames.com/lol/league-exp/v4/entries/RANKED_SOLO_5x5/CHALLENGER/I?page=1&api_key=#{AUTH_KEY}"
uri = URI(url)
response = Net::HTTP.get(uri)

JSON.parse(response).first(25).each do |encrypt_id|
  player = Player.create(name: Faker::Games::HalfLife.character,
                         address: Faker::Address.full_address,
                         phone_number: Faker::PhoneNumber.cell_phone,
                         email: Faker::Internet.email)

  summoner_data = "https://na1.api.riotgames.com/lol/summoner/v4/summoners/#{encrypt_id['summonerId']}?api_key=#{AUTH_KEY}"
  uri = URI(summoner_data)
  summoner_response = Net::HTTP.get(uri)

  summonerdata = JSON.parse(summoner_response)
  summoner = player.create_summoner(summonerId: summonerdata['id'],
                                    accountId: summonerdata['accountId'],
                                    summonerName: summonerdata['name'],
                                    summonerLevel: summonerdata['summonerLevel'])

  mastery_data = "https://na1.api.riotgames.com/lol/champion-mastery/v4/champion-masteries/by-summoner/#{encrypt_id['summonerId']}?api_key=#{AUTH_KEY}"
  urii = URI(mastery_data)
  mastery_response = Net::HTTP.get(urii)

  masterydata = JSON.parse(mastery_response).first(3)
  masterydata.each do |mastery|
    summoner.masteries.create(championId: mastery['championId'],
                              championLevel: mastery['championLevel'],
                              championPoints: mastery['championPoints'])
  end

  # 5.times do
  #   summoner.masteries.create(championId: rand(1..150),
  #                             championLevel: rand(1..7),
  #                             championPoints: rand(0..2_000_000))
  # end
end

puts "Created #{Player.count} Player."
puts "Created #{Summoner.count} Summoner."
puts "Created #{Mastery.count} Masteries"
