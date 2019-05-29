class Accountline < ApplicationRecord
  belongs_to :transtype
  belongs_to :entity
end
