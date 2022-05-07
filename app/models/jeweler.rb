class Jeweler < ApplicationRecord
  has_many :jewels, dependent: :destroy

  validates :name, presence: true
end
