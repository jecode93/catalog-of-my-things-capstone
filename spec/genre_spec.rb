describe Genre do
  let(:archived) { true }
  let(:publish_date) { Date.parse('2023-02-01') }
  let(:on_spotify) { true }

  subject(:album) { described_class.new(true, publish_date, true) }

  describe '#can_be_archived?' do
    context 'when super is false' do
      it 'returns false' do
        allow(album).to receive(:super).and_return(false)
        expect(album.can_be_archived?).to eq(false)
      end
    end

    context 'when on_spotify is false' do
      it 'returns false' do
        allow(album).to receive(:on_spotify).and_return(false)
        expect(album.can_be_archived?).to eq(false)
      end
    end
  end
end
