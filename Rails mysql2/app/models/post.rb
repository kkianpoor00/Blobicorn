class Post < ApplicationRecord

  belongs_to :ef_user

  scope :sorted, lambda { order("created_at DESC") }

end
