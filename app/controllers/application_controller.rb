class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :doorkeeper_authorize!, only: :me

  def me
    render json: User.find(doorkeeper_token.resource_owner_id).as_json
  end
end
