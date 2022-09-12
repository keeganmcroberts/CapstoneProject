class CitySerializer < ActiveModel::Serializer
  attributes :id, :city, :state, :image_url, :band_concerts
  has_many :venues

  def band_concerts
    self.object.concerts.map do |each_concert|
      {"concert_date": each_concert.concert_date, "concert_venue": each_concert.venue, "concert_band": each_concert.band }
    end
  end


end
