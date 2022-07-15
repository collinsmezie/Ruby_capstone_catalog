require './item'
# rubocop: disable Metrics/ParameterLists

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(genre, author, source, label, publish_date, on_spotify: true)
    super(genre, author, source, label, publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    current_year = Time.new.year
    last_played_year = @publish_date.split('-')
    last_played_at = current_year - last_played_year[0].to_i
    last_played_at > 10 && on_spotify
  end
end
# rubocop: enable Metrics/ParameterLists
