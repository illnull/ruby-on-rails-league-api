# frozen_string_literal: true

Rails.application.routes.draw do
  get 'summoners/index'
  get 'summoners/show'
  resources :pages
  root to: 'players#index'

  resources 'players', only: %i[index show]

  resources 'summoners', only: %i[index show]
end
