class Material < ApplicationRecord
  belongs_to :jewel, optional: true

  validates :name, presence: true
  validates :base_cost, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0}

  scope :gold, -> { joins(:jewel).merge(Jewel.type_of_gold) }
  scope :silver, -> { joins(:jewel).merge(Jewel.type_of_silver) }
  scope :iron, -> { joins(:jewel).merge(Jewel.type_of_iron) }
  scope :platinum, -> { joins(:jewel).merge(Jewel.type_of_platinum) }
  scope :white_gold, -> { joins(:jewel).merge(Jewel.type_of_white_gold) }

end
