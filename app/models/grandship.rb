class Grandship < ActiveRecord::Base
  belongs_to :grandmom
  belongs_to :skill
end
