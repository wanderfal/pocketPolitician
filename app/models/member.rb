class Member < ApplicationRecord
  belongs_to :district

  validates :members_id, uniquness: true
end
