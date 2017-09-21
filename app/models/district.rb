class District < ApplicationRecord
  has_many :members
  belongs_to :state
end
