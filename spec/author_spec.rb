require_relative '../classes/author'
require_relative '../classes/item'
require 'rspec'
require 'date'

describe '#add_item' do
  let(:author) { Author.new('John', ' Doe') }
  let(:item) { Item.new('Book', Date.today) }

  it 'adds the item to the author\'s items collection' do
    expect do
      author.add_item(item)
    end.to change {
      author.items.size
    }.by(1)
  end

  it 'sets the author of the item to the current author object' do
    author.add_item(item)
    expect(item.author).to eq(author)
  end
end
