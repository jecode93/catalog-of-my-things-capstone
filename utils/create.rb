require_relative '../classes/book'
require_relative '../classes/music_album'
require_relative '../classes/genre'
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

  def create_music_album
    print 'Enter Album Title: '
    name = gets.chomp.to_s

    print 'Enter date of release (YYYY-M-D): '
    publish_date = gets.chomp

    print 'Album listed on Spotify? (Y/N): '
    on_spotify = gets.chomp.upcase
    case on_spotify
    when 'Y'
      on_spotify = true
    when 'N'
      on_spotify = false
    else
      puts 'Invalid option'
      on_spotify = false
    end

    print 'Enter the genre of the album music: '
    genre = gets.chomp

    @music << MusicAlbum.new(publish_date, on_spotify, genre)
    write_to_file(@music, './data/music_albums.json')
    puts "Music Album '#{name}' created successfully'"
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
    write_to_file(@game, './data/game.json') do |game|
    end
    puts "Game '#{multiplayer}' created successfully"
  end
end
