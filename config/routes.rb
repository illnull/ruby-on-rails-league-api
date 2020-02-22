# frozen_string_literal: true

Rails.application.routes.draw do
  get 'masteries/index'
  get 'masteries/show'
  resources :pages
  root to: 'about_us#index'

  resources 'players', only: %i[index show]

  resources 'summoners', only: %i[index show]
end
