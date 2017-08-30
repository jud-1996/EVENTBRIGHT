class User < ApplicationRecord
  
        has_many :microposts, dependent: :destroy
    
        before_save { email.downcase! }
        validates :name, presence: true, length: {maximum: 50}
        
        VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

        validates :email, presence: true, length: {maximum: 255},
                  uniqueness: { case_sensitive: false }
        
        has_secure_password
          validates :password, length: { minimum: 6 } 
end
