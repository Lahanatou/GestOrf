class Originalparent < ApplicationRecord
  validates :name,:description,:phone, null:false, presence: true
  has_many :orphans

end
