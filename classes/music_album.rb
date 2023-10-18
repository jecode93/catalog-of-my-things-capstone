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
end