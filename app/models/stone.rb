class Stone < ApplicationRecord
  belongs_to :jewel, optional: true
end
