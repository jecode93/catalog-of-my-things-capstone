require_relative 'item'

class Genre
  attr_reader :id, :items
  attr_accessor :name

  def initialize(name)
    @id = generate_id
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'a' => [name]
    }.to_json(*args)
  end

  def self.json_create(object)
    new(*object['a'])
  end

  private

  def generate_id
    timestamp = Time.now.to_i * 1000
    random_number = rand(10_000)
    "Aut#{timestamp}#{random_number}"
  end
end
