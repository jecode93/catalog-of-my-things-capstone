require_relative '../classes/book'
require_relative '../classes/item'
require_relative '../utils/preserve_data'

module Create
  def create_book
    print 'Publisher: '
    publisher = gets.chomp.to_s

    print 'Cover state: '
    cover_state = gets.chomp.to_s

    print 'Publish date: '
    publish_date = gets.chomp.to_s

    @books << Book.new(publisher, cover_state, publish_date)
    write_to_file(@books, './data/books.json')
    puts "Book '#{publisher}' created successfully'"
  end
end
