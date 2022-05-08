class Stone < ApplicationRecord
  belongs_to :jewel, optional: true

  validates :name, presence: true
  validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0}
end
