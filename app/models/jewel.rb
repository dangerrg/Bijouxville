class Jewel < ApplicationRecord
  belongs_to :jeweler
  has_many :stones
  has_many :materials

  validates :name, presence: true
  validates :number_of_stones, presence: true
  validates :type_of_stones, presence: true
  validates :material, presence: true
  validates :jeweler, presence: true
end
