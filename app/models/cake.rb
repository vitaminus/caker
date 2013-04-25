class Cake < ActiveRecord::Base
  attr_accessible :category_id, :description, :manufacturer_id, :title

  belongs_to :user
  has_many :comments, as: :commentable

  validates :title, presence: true
  validates :description, presence: true
end
