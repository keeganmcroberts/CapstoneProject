class User < ApplicationRecord
    has_many :bands
    has_many :venues

    validates :email, presence: true
    #has_secure_password already handles validation for validation of password presence


    has_secure_password
end
