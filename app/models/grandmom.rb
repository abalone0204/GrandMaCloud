class Grandmom < ActiveRecord::Base
  has_many :grandships, :dependent => :destroy
  has_many :skills, through: :grandships
end
