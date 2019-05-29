class Entity < ApplicationRecord
  belongs_to :user
  belongs_to :entitytype
  has_many :accountlines
end
