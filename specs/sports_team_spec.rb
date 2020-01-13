require('minitest/autorun')
require('minitest/reporters')

require_relative('../part_b_sports_team.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test


  def setup
    @sports_team = SportsTeam.new("City Rovers", ["Joe Bloggs", "Fred Bloggs", "John Doe"], "Jim Wilson")
  end

  # def setup
  #   @bank_account = BankAccount.new("Niall", 300, "business")
  # end

  #test_getters
  def test_get_team_name()
    assert_equal("City Rovers", @sports_team.team_name)
  end

  def test_get_players()
    assert_equal(["Joe Bloggs", "Fred Bloggs", "John Doe"], @sports_team.players)
  end

  def test_get_coach()
    assert_equal("Jim Wilson", @sports_team.coach)
  end


  #test SETTERS
  def test_set_coach()
    @sports_team.set_coach("Jose Morinho")
    assert_equal("Jose Morinho", @sports_team.coach)
  end



  def test_add_player()
    
    @sports_team.add_player("Lionel Messi")

  end


end
