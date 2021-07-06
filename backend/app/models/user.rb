require 'bcrypt'
class User < ApplicationRecord
    include BCrypt
    has_secure_password

    has_many :builds
    has_many :player_classes, through: :builds
    has_many :specs, through: :player_classes
    has_many :talents, through: :specs
    has_many :ranks, through: :talents

    validates :email, uniqueness: true
end
