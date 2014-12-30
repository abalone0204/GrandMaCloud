class Skill < ActiveRecord::Base
  has_many :grandships, :dependent => :destroy
  has_many :grandmoms, through: :grandships
end
