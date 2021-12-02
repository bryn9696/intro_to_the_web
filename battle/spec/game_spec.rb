require 'game'

describe Game do
  let(:michael) { double('Michael') }
  let(:bryn) { double('Bryn', :receive_damage => true) }
  
  describe '#attack' do
    it 'damages the player' do
      expect(bryn).to receive(:receive_damage)
      subject.attack(bryn)
    end
  end
end