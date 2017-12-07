Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  root 'application#me'
  get '/me' => 'application#me'
end
