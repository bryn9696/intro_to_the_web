require 'game'

describe Game do
  let(:michael) { double('Michael') }
  let(:bryn) { double('Bryn', :receive_damage => true) }
  
  describe '#attack' do
    it 'damages the player' do
      expect(bryn).to receive(:receive_damage)
      Game.new(michael, bryn).attack(michael)
    end
  end

  describe '#turn' do
    it 'starts as player 1' do
      expect(Game.new(michael, bryn).turn).to eq michael
    end
  end
end