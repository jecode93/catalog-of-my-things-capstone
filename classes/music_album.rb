require_relative 'item'
require 'date'

class MusicAlbum < Item
  attr_reader :id, :on_spotify

  def initialize(archived, publish_date, on_spotify)
    super(archived, publish_date)
    @id = Random.rand(1...1000)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super == true && @on_spotify == true
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'a' => [archived, publish_date, on_spotify]
    }.to_json(*args)
  end

  def self.json_create(object)
    new(*object['a'])
  end
  
end
