Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  root 'application#me'
  get '/me' => 'application#me'
  # http://localhost:3000/oauth/applications/5
end
