class ConcertSerializer < ActiveModel::Serializer
  attributes :id #, :venue, :band, :concert_date
  has_one :concert_date
  has_one :venue
  has_one :band
end
