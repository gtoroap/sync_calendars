class RootController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def main
  end
end
