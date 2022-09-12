class BandSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :imaage_url, :concerts, :venues, :concert_dates, :band_concerts
  

  def band_concerts
    self.object.concerts.map do |each_concert|
      {"concert_date": each_concert.concert_date, "concert_venue": each_concert.venue, "concert_band": each_concert.band }
    end
  end







end
