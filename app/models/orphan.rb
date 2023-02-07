class Orphan < ApplicationRecord
  belongs_to :hostparent
  belongs_to :originalparent
  #validates :name,:description,:sexe,:age, null:false, presence: true, unless: :image?
  #belongs_to :user
validates :name, :description, :sex, :age ,null:false, presence: true, length: { minimum: 1 }, unless: :image?
# validates :age, presence: false
# validates :sex, presence: false
# validates :image, presence: false
mount_uploader :image, ImageUploader
paginates_per 5
end
