class GrandmomsController < ApplicationController
  before_filter :find_skill_and_gm, only: [:chat, :judge, :complete]
  def index
  end

  def show

  end

  def phone_call

  end

  def chat

  end

  def judge
    
  end

  def complete
    
  end


  private


  def find_skill_and_gm
    @skill =Skill.find(params[:skill_id])
    @gm = Grandmom.find(params[:id])
  end
end
