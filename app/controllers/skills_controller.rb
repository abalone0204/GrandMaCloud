class SkillsController < ApplicationController
  before_action :find_skill, only: [:show]
  def index
    @skills = Skill.all
    @gm = Grandmom.all
  end

  def show
    @gm = @skill.grandmoms.sample
  end

  private 

  def find_skill
    @skill = Skill.find(params[:id])
  end
end
