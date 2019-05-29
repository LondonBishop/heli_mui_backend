class User < ApplicationRecord
    has_many :entities
    has_many :accountlines, through: :entities
end
