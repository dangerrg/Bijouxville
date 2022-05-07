class Jewel < ApplicationRecord
  belongs_to :jeweler
  has_many :stones, dependent: :destroy
  has_many :materials, dependent: :destroy

  validates :name, presence: true
  validates :number_of_stones, presence: true
  validates :type_of_stones, presence: true
  validates :material, presence: true
  validates :jeweler_id, presence: true

  enum :description, { Necklaces: "Necklaces", Pendants: "Pendants", Earrings: "Earrings", Bracelets: "Bracelets", Rings: "Rings", Brooches: "Brooches", Charms: "Charms", Wedding_Bands: "Wedding_Bands" }

  def total_price
    material_by_cost = Material.find(material_ids)
    stone_by_price = Stone.find(stone_ids)

    self.price = material_by_cost.sum(&:base_cost) + (stone_by_price.sum(&:price) * number_of_stones)
  end
end
