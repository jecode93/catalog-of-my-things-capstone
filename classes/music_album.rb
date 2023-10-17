require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(on_spotify, archived, publish_date)
    super(archived, publish_date)
    @on_spotify = on_spotify
  end
end
