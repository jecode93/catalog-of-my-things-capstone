require_relative 'item'

class Genre
  attr_reader :id, :items
  attr_accessor :name

  def initialize(name)
    @id = Random.rand(1..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
  end

  def to_json(option = {})
    {
      id: @id,
      name: @name
    }.to_json(option)
  end
end
