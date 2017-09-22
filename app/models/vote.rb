class Vote < ApplicationRecord
  belongs_to :member
  has_many :bills
end
