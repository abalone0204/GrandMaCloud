class HomeController < ApplicationController
  before_filter :authenticate, only: [:chat_room]

  def index
    @skills = Skill.all
    @grandmoms = Grandmom.all
    render layout: 'home'
  end

  def chat_room
    render layout: 'application'
  end

  private

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "gm" && password == "oopsgrandma"
    end
  end
end
