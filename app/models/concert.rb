class Concert < ApplicationRecord
  belongs_to :concert_date
  belongs_to :venue
  belongs_to :band
end
