class Post < ApplicationRecord
    has_many :comments, dependent: :destroy

    belongs_to :user, class_name:"User", foreign_key: "user_id"
    
    has_many :likes, dependent: :destroy
end