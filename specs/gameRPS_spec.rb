require 'minitest/autorun'
require_relative '../models/gameRPS'

class TestGameRPS < Minitest::Test

  def setup
    @game1 = GameRPS.new( "scissors", "paper" )
    @game2 = GameRPS.new( "paper", "rock" )
    @game3 = GameRPS.new( "rock", "scissors" )
    @game4 = GameRPS.new("scissors", "scissors")
  end

  def test_scissors
    assert_equal( "scissors wins", @game1.compare())
  end

  def test_paper
    assert_equal( "paper wins", @game2.compare())
  end

  def test_rock
    assert_equal( "rock wins", @game3.compare())
  end

  def test_tie
    assert_equal( "no one wins", @game4.compare())
  end

end
