class Jewel < ApplicationRecord
  belongs_to :jeweler
  has_many :stones
  has_many :materials
end
