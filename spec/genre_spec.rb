require_relative '../classes/genre'
require 'rspec'

describe Genre do
  let(:genre_name) { 'Rock' }
  let(:item) { double('Item') }

  subject(:genre) { described_class.new(genre_name) }

  describe '#add_item' do
    it 'adds item inside the genre' do
      expect(item).to receive(:genre=).with(genre)
      genre.add_item(item)
      expect(genre.items).to include(item)
    end
  end
end
