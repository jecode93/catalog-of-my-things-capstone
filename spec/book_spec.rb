require_relative '../classes/book'
require 'rspec'

describe Book do
  describe '#book' do
    it 'should return book as instance of Books' do
      book = Book.new('1-2-2023', 'First publisher', 'bad')
      expect(book).to be_instance_of Book
    end

    it 'should have First publisher as the publisher' do
      book = Book.new('1-2-2023', 'First publisher', 'bad')
      expect(book.publisher).to eq('First publisher')
    end

    it 'should have bad as the cover_state' do
      book = Book.new('1-2-2023', 'First publisher', 'bad')
      expect(book.cover_state).to eq('bad')
    end
  end
end
