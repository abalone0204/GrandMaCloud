class HomeController < ApplicationController
  def index
    @skills = Skill.all
    @grandmoms = Grandmom.all
    render layout: 'home'
  end
  def chat_room
    
  end
end
