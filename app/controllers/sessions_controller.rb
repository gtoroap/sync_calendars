class SessionsController < ApplicationController
    # If you're using a strategy that POSTs during callback, you'll need to skip the authenticity token check for the callback action only. 
    skip_before_action :verify_authenticity_token, only: :create
    
    def new

    end

    def create
      redirect_to sessions_new_path
    end
end