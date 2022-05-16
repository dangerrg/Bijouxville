class Jewel < ApplicationRecord
  belongs_to :jeweler
  has_many :stones, dependent: :destroy
  has_many :materials, dependent: :destroy

  validates :name, presence: true
  validates :number_of_stones, presence: true, :numericality => {:greater_than => 0}
  validates :type_of_stones, presence: true
  validates :material, presence: true
  validates :jeweler_id, presence: true
  validates :description, presence: true

  scope :type_of_gold, -> { where(material: "Gold") }
  scope :type_of_silver, -> { where(material: "Silver") }
  scope :type_of_iron, -> { where(material: "Iron") }
  scope :type_of_platinum, -> { where(material: "Platinium") }
  scope :type_of_white_gold, -> { where(material: "White Gold") }

  scope :with_of_safire, -> { where(type_of_stones: "Safire") }
  scope :with_of_emerald, -> { where(type_of_stones: "Emerald") }
  scope :with_of_diamond, -> { where(type_of_stones: "Diamond") }
  scope :with_of_black_diamond, -> { where(type_of_stones: "Black Diamond") }
  scope :with_of_ruby, -> { where(type_of_stones: "Ruby") }

  enum :description, { Necklaces: "Necklaces", Pendants: "Pendants", Earrings: "Earrings", Bracelets: "Bracelets", Rings: "Rings", Brooches: "Brooches", Charms: "Charms", Wedding_Bands: "Wedding_Bands" }

  def price
    material_base_cost = 9.99 unless self.material_base_cost.present?
    price_of_stone = 19.99 unless self.price_of_stone.present?

    self.material_base_cost + (self.price_of_stone * self.number_of_stones)
  end
end
