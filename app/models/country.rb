# encoding: UTF-8
class Country < ActiveRecord::Base
  attr_accessible :slug, :title, :url_title

  has_many :cities, dependent: :destroy
  has_many :users, dependent: :destroy

  VALID_URL_TITLE = /[A-Za-z]/i

  validates :title, presence: true
  validates :url_title, presence: true,
            format: { with: VALID_URL_TITLE, message: "Только английскими буквами" }, 
            uniqueness: true
end
