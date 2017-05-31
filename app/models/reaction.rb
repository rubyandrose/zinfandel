class Reaction < ApplicationRecord
  belongs_to :user
  belongs_to :post

  ACCEPTABLE_FEELS = ['happy', 'angry', 'sad', 'tired']

  validates :feels, inclusion: { in: ACCEPTABLE_FEELS }
  validates :feels, presence: true
end
