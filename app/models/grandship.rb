class Grandship < ActiveRecord::Base
  belongs_to :grandmom
  belongs_to :skill
  validates_uniqueness_of :skill_id, scope: :grandmom_id
end
