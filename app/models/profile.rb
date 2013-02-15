class Profile < ActiveRecord::Base
  attr_accessible :name, :phone1, :phone2, :user_id, :avatar

  belongs_to :user, dependent: :destroy
  mount_uploader :avatar, AvatarUploader
  #before_save :assign_user_id

  validates :phone1, presence: true
  validates :name, presence: true, length: {minimum: 5, maximum: 40}

end