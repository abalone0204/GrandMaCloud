class HomeController < ApplicationController
  def index
    @skills = Skill.all
    @grandmoms = Grandmom.all
  end
  def chat_room
    
  end
end
