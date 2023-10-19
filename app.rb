require_relative 'classes/book'
require_relative 'classes/music_album'
require_relative 'classes/author'
require_relative 'utils/create'
require_relative 'utils/List'

class App
  include Create
  include List
  attr_accessor :books, :music, :games, :genres, :labels, :authors

  def initialize
    @books = []
    @music = []
    @games = []
    @genres = []
    @labels = []
    @authors = []
  end

  def actions(option)
    methods = [
      method(:create_book),
      method(:create_music_album),
      method(:create_game),
      method(:list_books),
      method(:list_music_albums),
      method(:list_games),
      method(:list_genres),
      method(:list_labels),
      method(:list_authors)
    ]
    if (1..10).include?(option)
      methods[option - 1].call
    else
      puts 'Choose a number between 1 and 10'
    end
  end
end
