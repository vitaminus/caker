class Comment < ActiveRecord::Base
  attr_accessible :body, :commenter

  belongs_to :commentable, polymorphic: true

  validates :commenter, presence: true, length: { minimum: 4, maximum: 25 }
  validates :body, presence: true, length: { maximum: 500 }            

end
