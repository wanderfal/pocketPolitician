class Member < ApplicationRecord
  belongs_to :district, optional: true
  belongs_to :state

  validates :member_id, uniqueness: true
end
