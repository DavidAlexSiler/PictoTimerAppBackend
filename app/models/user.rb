class User < ApplicationRecord
    has_secure_password
    has_many :groups
    has_many :students, through: :groups
end
