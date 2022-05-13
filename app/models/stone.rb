class Stone < ApplicationRecord
  belongs_to :jewel, optional: true

  validates :name, presence: true
  validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0}

  scope :safire, -> { joins(:jewel).merge(Jewel.with_of_safire) }
  scope :emerald, -> { joins(:jewel).merge(Jewel.with_of_emerald) }
  scope :diamond, -> { joins(:jewel).merge(Jewel.with_of_diamond) }
  scope :black_diamond, -> { joins(:jewel).merge(Jewel.with_of_black_diamond) }
  scope :ruby, -> { joins(:jewel).merge(Jewel.with_of_ruby) }
end
