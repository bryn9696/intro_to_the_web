describe Player do

	it 'names the Player' do
		michael = Player.new("Michael")
		expect(michael.name).to eq "Michael"
	end
end