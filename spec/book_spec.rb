require_relative '../classes/book'
require 'rspec'

describe Book do
  describe '#book' do
    it 'should return book as instance of Books' do
      book = Book.new('First publisher', 'bad', '17-10-2023')
      expect(book).to be_instance_of Book
    end

    it 'should have First publisher as the publisher' do
      book = Book.new('First publisher', 'bad', '17-10-2023')
      expect(book.publisher).to eq('First publisher')
    end

    it 'should have bad as the cover_state' do
      book = Book.new('First publisher', 'bad', '17-10-2023')
      expect(book.cover_state).to eq('bad')
    end
  end
end
