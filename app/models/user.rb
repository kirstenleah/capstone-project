class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy

    
    has_secure_password

    validates 
    :username, 
    presence: true, 
    uniqueness: true, 
    length: {
        minimum: 4
    }
    validates :password, presence: true
end
