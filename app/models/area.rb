# encoding: UTF-8
class Area < ActiveRecord::Base
  attr_accessible :slug, :title, :url_title, :city_id, :country_id

  belongs_to :city, foreign_key: 'city_id'
  has_many :users, dependent: :destroy

  VALID_URL_TITLE = /[A-Za-z]/i

  validates :country_id, presence: true
  validates :city_id, presence: true
  validates :title, presence: true
  validates :url_title, presence: true,
            format: { with: VALID_URL_TITLE, message: "Только английскими буквами" }, 
            uniqueness: true
end
