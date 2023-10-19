require_relative '../classes/game'
require 'rspec'
require 'date'

RSpec.describe Game do
  let(:multiplayer) { 'Some Game' }
  let(:last_played_at) { Time.now - (2 * 365 * 24 * 60 * 60) - 1 }
  let(:publish_date) { '2021-01-01' }
  let(:game) { Game.new(multiplayer, last_played_at, publish_date) }

  describe '#initialize' do
    it 'sets the multiplayer attribute' do
      expect(game.multiplayer).to eq multiplayer
    end

    it 'sets the last_played_at attribute' do
      expect(game.last_played_at).to eq last_played_at
    end

    it 'sets the publish_date attribute' do
      expect(game.publish_date).to eq publish_date
    end
  end

  describe '#can_be_archived?' do
    it 'returns true if the game can be archived' do
      expect(game.can_be_archived?).to eq true
    end
  end

  describe '#to_json' do
    it 'returns a hash with the correct attributes' do
      json = game.to_json
      expect(json[:multiplayer]).to eq multiplayer
      expect(json[:last_played_at]).to eq last_played_at
      expect(json[:publish_date]).to eq publish_date
    end
  end
end
