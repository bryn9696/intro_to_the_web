describe Player do
  subject(:michael) { Player.new('Michael') }
  subject(:bryn) { Player.new('Bryn') }

  describe '#name' do
    it 'returns the name' do
      expect(michael.name).to eq 'Michael'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(michael.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(bryn).to receive(:receive_damage)
      michael.attack(bryn)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { michael.receive_damage }.to change { michael.hit_points }.by(-10)
    end
  end
 end