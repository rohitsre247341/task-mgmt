class User < ApplicationRecord
    has_many :tasks
    has_secure_password
    validates :name, presence: true
end
