class Hostparent < ApplicationRecord
  has_many :orphans
  validates :name,:adress,:phone, null:false, presence: true
end
