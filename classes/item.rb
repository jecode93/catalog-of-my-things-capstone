class Item
  attr_accessor :id, :archived, :publish_date, :genre, :author, :source, :label

  def initialize(archived, publish_date)
    @id = generate_id
    @archived = archived
    @publish_date = publish_date
    @genre = nil
    @author = nil
    @source = nil
    @label = nil
  end

  def generate_id
    timestamp = Time.now.to_i * 1000
    random_number = rand(10_000)
    "#{timestamp}#{random_number}"
  end

  def move_to_archive
    @archived = can_be_archived
  end

  private

  def can_be_archived?
    (Time.new.year - @publish_date.year) > 10
  end
end
