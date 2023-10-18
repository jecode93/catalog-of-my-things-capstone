require_relative '../classes/book'
require_relative '../classes/item'
require_relative '../classes/label'
require_relative 'preserve_data'

module List
  def list_books
    @books = read_from_file('./data/books.json')
    puts 'Book list is empty' if @books.empty?
    @books.each_with_index do |book, i|
      puts "#{i}) Publisher: #{book['publisher']}, Cover state: #{book['cover_state']}, Publish date: #{book['publish_date']}"
    end
  end

  def list_labels
    @labels = read_from_file('./data/labels.json')
    puts 'Labels list is empty' if @labels.empty?
    @labels.each_with_index do |label, i|
      puts "#{i}) Title: '#{label['title']}', Color: '#{label['color']}', Items: '#{label['items']}'"
    end
  end
end
