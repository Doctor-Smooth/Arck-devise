class Blog < ApplicationRecord
  validates :user_id, presence: true
  validates :text, presence: true
  # validates :image, presence: true
  validates :title, presence: true
  
  belongs_to :user
  
  mount_uploader :image, ImageUploader
end
