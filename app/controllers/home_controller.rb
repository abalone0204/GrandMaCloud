class HomeController < ApplicationController
  def index
    @skills = Skill.all
    @grandmoms = Grandmom.all
  end
end
