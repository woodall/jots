Rails.application.routes.draw do

  devise_for :users
  root 'entries#index'

  get '/welcome' => 'static#index'

  resources :entries
  resources :today, only: :index
  resources :tags, only: :show
  resources :searches, only: [:index, :show]
  resources :archives, only: [:index, :show]
end
