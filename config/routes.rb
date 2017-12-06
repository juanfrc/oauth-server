Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  root 'home#index'
  get '/provider' => 'application#provider'
end
