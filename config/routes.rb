# frozen_string_literal: true

Rails.application.routes.draw do
  resources :pages
  root to: 'about_us#index'

  resources 'players', only: %i[index show]

  resources 'summoners', only: %i[index show]

  resources 'leaderboards', only: %i[index]
end
