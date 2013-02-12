# encoding: UTF-8
class City < ActiveRecord::Base
  attr_accessible :slug, :title, :url_title, :country_id

  belongs_to :country, foreign_key: 'country_id'
  has_many :areas, dependent: :destroy
  has_many :users, dependent: :destroy

  VALID_URL_TITLE = /[A-Za-z]/i

  validates :country_id, presence: true
  validates :title, presence: true
  validates :url_title, presence: true,
            format: { with: VALID_URL_TITLE, message: "Только английскими буквами" }, 
            uniqueness: true
end
