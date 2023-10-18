require_relative '../classes/author'
require 'rspec'
describe '#can_be_archived?' do
  let(:title) { 'Some Game' }
  let(:published_date) { Date.new(2019, 1, 1) }
  let(:last_played_at) { Time.new(2022, 1, 1) }
  let(:game) { Game.new(title, published_date, last_played_at) }

  context 'when the game can be archived' do
    it 'returns true' do
      allow(Time).to receive(:now).and_return(Time.new(2024, 1, 1))
      expect(game.can_be_archived?).to be true
    end
  end

  context 'when the game cannot be archived' do
    it 'returns false' do
      allow(Time).to receive(:now).and_return(Time.new(2023, 1, 1))
      expect(game.can_be_archived?).to be false
    end
  end
end
