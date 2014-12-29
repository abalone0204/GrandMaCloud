class SkillsController < ApplicationController
  before_action :find_skill, only: [:show]
  def index
    @skills = Skill.all
    @gm = Grandmom.all
  end

  def show
    @gm = @skill.grandmom
  end

  def phone_call

  end

  private 

  def find_skill
    @skill = Skill.find(params[:id])
  end
end
