class Material < ApplicationRecord
  belongs_to :jewel, optional: true
end
