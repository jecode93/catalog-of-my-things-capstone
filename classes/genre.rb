class Genre
  attr_accessor :id, :name, :items

  def initialize(name, _id)
    @id = generate_unique_id
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
  end

  private

  def generate_unique_id
    timestamp = Time.now.to_i * 1000
    random_number = rand(10_000)
    "Aut#{timestamp}#{random_number}"
  end
end
