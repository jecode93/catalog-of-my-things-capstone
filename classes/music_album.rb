require_relative 'item'
require 'date'

class MusicAlbum < Item
  attr_accessor :id, :on_spotify

  def initialize(on_spotify, archived, publish_date)
    super(archived, publish_date)
    @id = Random.rand(1...1000)
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?
    super == true && @on_spotify == true
  end
end
