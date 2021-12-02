class Game 
  attr_reader :turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @turn = player_1
  end

  def player_1 
    @players.first
  end

  def player_2 
    @players.last
  end

  def attack(player)
    if player == player_1
      player_2.receive_damage
      @turn = player_2
    else
      player_1.receive_damage
      @turn = player_1
    end
  end
end