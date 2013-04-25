# encoding: UTF-8
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, 
                  :remember_me, :country_id, :city_id, :area_id, :name,
                  :phone1, :phone2, :avatar, :remove_avatar
  # attr_accessible :title, :body

  belongs_to :country
  belongs_to :city
  belongs_to :area
  has_many   :cakes
  has_many   :comments, as: :commentable
  
  mount_uploader :avatar, AvatarUploader

  validates :country_id, :city_id, :area_id, presence: true
  validates :username, presence: true, length: {minimum: 5, maximum: 25},
                       uniqueness: {case_sencitive: false, message: "Такой логин уже занят"}
end