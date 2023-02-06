class Orphan < ApplicationRecord
  belongs_to :hostparent
  belongs_to :originalparent
  #belongs_to :user
validates :name, :description, null:false, presence: true, length: { minimum: 1 }, unless: :image?
validates :age, presence: false
validates :sex, presence: false
validates :image, presence: false
mount_uploader :image, ImageUploader
#paginates_per 10
end
