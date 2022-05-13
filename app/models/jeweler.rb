class Jeweler < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :jewels, dependent: :destroy

  validates :name, presence: true
  before_validation :downcase_email

  scope :with_golden_jewels, -> { joins(:jewels).merge(Jewel.type_of_gold) }
  scope :with_silver_jewels, -> { joins(:jewels).merge(Jewel.type_of_silver) }
  scope :with_iron_jewels, -> { joins(:jewels).merge(Jewel.type_of_iron) }
  scope :with_platinium_jewels, -> { joins(:jewels).merge(Jewel.type_of_platinum) }
  scope :with_white_gold_jewels, -> { joins(:jewels).merge(Jewel.type_of_white_gold) }

  private

  def downcase_email
    self.email = email.downcase if email
  end

end
