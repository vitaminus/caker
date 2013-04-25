class Comment < ActiveRecord::Base
  attr_accessible :body, :commentable_id, :commentable_type, :commenter

  belongs_to :user
  belongs_to :commentable, polymorphic: true

  validates :commenter, presence: true, length: { minimum: 5, maximum: 25 }
  validates :body, presence: true, length: { maximum: 500 }            

end
