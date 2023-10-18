require_relative '../classes/book'
require_relative '../classes/item'
require_relative '../classes/label'
require_relative '../classes/game'
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

  def list_authors
    @authors = read_from_file('./data/author.json')
    puts 'Authors list is empty' if @authors.empty?
    @authors.each_with_index do |author, i|
      puts "#{i}) First Name: '#{author['first_name']}', Last Name: '#{author['last_name']}', Items: '#{author['items']}'"
    end
  end

  def list_games
    @games = read_from_file('./data/game.json')
    puts 'Game list is empty' if @games.empty?
    @games.each_with_index do |game, i|
      puts "#{i}) Multiplayer: #{game['multiplayer']}, Last played at:
      #{game['last_played_at']}, Publish date: #{game['publish_date']}"
    end
  end
end
