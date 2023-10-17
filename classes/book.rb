require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state, :can_be_archived

  def initialize(publish_date, publisher, cover_state)
    @publisher = publisher
    @cover_state = cover_state
    super(publish_date, nil)
  end

  def can_be_archived?
    Item.can_be_archived? || cover_state.downcase == 'bad'
  end
end
