require('minitest/autorun')
require('minitest/reporters')

require_relative('../part_b_sports_team.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test


  def setup
    @sports_team = SportsTeam.new("City Rovers",
      ["Joe Bloggs", "Fred Bloggs", "John Doe"],
      "Jim Wilson")
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

  def test_get_starting_points()
    assert_equal(0, @sports_team.points)
  end


  #test SETTERS
  def test_set_coach()
    @sports_team.set_coach("Jose Mourinho")
    assert_equal("Jose Mourinho", @sports_team.coach)
  end

  def test_set_points__win()
    @sports_team.set_points("win")
    assert_equal(3, @sports_team.points)
  end

  def test_set_points__draw()
    @sports_team.set_points("draw")
    assert_equal(1, @sports_team.points)
  end

  def test_set_points__defeat()
    @sports_team.set_points("lose")
    assert_equal(0, @sports_team.points)
  end

  def test_add_player()
    @sports_team.add_player("Lionel Messi")
  end

  def test_check_player()
    @sports_team.check_player(@sports_team, "Fred Bloggs")
  end




end
