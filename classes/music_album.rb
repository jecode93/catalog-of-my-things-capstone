require_relative 'item'

class MusicAlbum < Item
  attr_accessor :id, :name, :on_spotify

  def initialize(name, on_spotify, genre, publish_date)
    super(publish_date, genre)
    @id = Random.rand(1...1000)
    @name = name
    @publish_date = publish_date
    @on_spotify = on_spotify
    @genre = genre
  end

  def can_be_archived?
    archived && @on_spotify == true
  end

  def to_json(*_args)
    {
      id: Random.rand(1..100),
      name: @name,
      publish_date: @publish_date,
      on_spotify: @on_spotify,
      genre: @genre
    }
   end
end
