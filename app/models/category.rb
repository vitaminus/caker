# encoding: UTF-8
class Category < ActiveRecord::Base
  attr_accessible :title, :url_title

  VALID_URL_TITLE = /[A-Za-z]/i

  validates :title, presence: true
  validates :url_title, presence: true,
            format: { with: VALID_URL_TITLE, message: "Только английскими буквами" }, 
            uniqueness: true
end
