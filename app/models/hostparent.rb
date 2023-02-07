class Hostparent < ApplicationRecord
  has_many :orphans, dependent: :destroy
  validates :name,:adress,:phone, null:false, presence: true
  paginates_per 5
end
