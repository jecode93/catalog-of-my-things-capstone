require_relative '../classes/book'
require_relative '../classes/music_album'
require_relative '../classes/genre'
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

def list_music_albums
  @music = read_from_file('./data/music_albums.json')
  puts 'Music Albums list is empty' if @music.empty?
  @music.each_with_index do |music, i|
    puts "#{i}) Name: '#{music['name']}', Publish date: '#{music['publish_date']}', On Spotify: '#{music['on_spotify']},
    Genres: '#{music['genres']}'"
  end
end

def list_genres
  @genres = read_from_file('./data/genres.json')
  puts 'Genres list is empty' if @genres.empty?
  @genres.each_with_index do |genre, i|
    puts "#{i}) Name: '#{genre['name']}',  Items: '#{genre['items']}'"
  end
end
