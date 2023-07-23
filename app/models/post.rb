class Post < ApplicationRecord
    validates :title, presence: true, length: {minimum: 3, maximum: 50}
    belongs_to :user
    has_many :comments, dependent: :destroy #when post is deleted so are comments

end
