class SessionsController < ApplicationController
  # If you're using a strategy that POSTs during callback, you'll need to skip the authenticity token check for the callback action only. 
  skip_before_action :verify_authenticity_token

  def create
    login_via_cronofy(auth_hash)
    @events = cronofy.read_events(params[:id])
    redirect_to root_path
  end

  def destroy
    logout
    redirect_to root_path
  end

  protected
  def auth_hash
    request.env['omniauth.auth']
  end

  def login_via_cronofy(auth_hash)
    user = User.find_or_create_by(cronofy_id: auth_hash["uid"])

    user.email = auth_hash['info']['email']
    user.name = auth_hash['info']['name']
    user.save

    login(user)
  end
end