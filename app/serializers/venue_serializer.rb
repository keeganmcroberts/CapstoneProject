class VenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :bands, :concerts, :band_concerts
  has_one :city

  def band_concerts
    self.object.concerts.map do |each_concert|
      {"concert_date": each_concert.concert_date, "concert_venue": each_concert.venue, "concert_band": each_concert.band }
    end
  end
end
