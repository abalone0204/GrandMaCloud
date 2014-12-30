class GrandmomsController < ApplicationController
  before_filter :authenticate, only: [:chat]
  def index
  end

  def show
  end

  def phone_call

  end

  def chat
    
  end
  private

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "gm" && password == "oopsgrandma"
    end
  end
end
