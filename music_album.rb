require './item'
# rubocop: disable Metrics/ParameterLists

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(genre, author, source, label, publish_date, on_spotify: true)
    super(genre, author, source, label, publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    @publish_date > 10 && on_spotify
  end
end
# rubocop: enable Metrics/ParameterLists
