require_relative 'item'
class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(id = nil, name, genre, multiplayer, last_played_at, publish_date)
    super(id, name, genre, publish_date)
    @multiplayer = multiplayer,
                   @last_played_at = last_played_at
  end

  def can_be_archived?
    super && (@last_played_at < Date.today - (365 * 2)) # Last played more than 2 years ago
  end

end
