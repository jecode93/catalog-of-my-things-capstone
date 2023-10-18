require_relative '../classes/book'
require_relative '../classes/item'
require_relative '../classes/game'
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

  def create_game
    @game = []
    print 'Multiplayer: '
    multiplayer = gets.chomp.to_s

    print 'Last played at: '
    last_played_at = gets.chomp.to_s

    print 'Publish date: '
    publish_date = gets.chomp.to_s

    @game << Game.new(multiplayer, last_played_at, publish_date.to_s)
    write_to_file(@game, './data/game.json')
    puts "Game '#{multiplayer}' created successfully"
  end
end
