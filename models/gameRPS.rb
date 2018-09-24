# require_relative("../gameRPS/specs")

class GameRPS

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def compare
    if (@player1 == "scissors" && @player2 == "paper") || (@player1 == "paper" && @player2 == "scissors")
      result = "scissors wins"
    elsif (@player1 == "scissors" && @player2 == "rock") || (@player1 == "rock" && @player2 == "scissors")
      result = "rock wins"
    elsif
      (@player1 == "paper" && @player2 == "rock") || (@player1 == "rock" && @player2 == "paper")
      result = "paper wins"
    else
      result = "no one wins"
    end
    return result
  end
end
