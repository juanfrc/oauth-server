Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  get '/provider' => 'application#provider'
end
