require('minitest/autorun')
require('minitest/reporters')

require_relative('../part_A_codeClan_student.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test
  def setup
    @student = Student.new("Niall", "G18")
  end

  #test getters
  def test_student_name
    # assert_equal('Niall', @student.student_name)
    assert_equal("Niall", @student.get_student_name)
    # assert_equal('Niall', @TestStudent.student_name)
  end

  def test_cohort
    # student = Student.new('Niall', 'G18')
    assert_equal("G18", @student.get_cohort)
  end

  #test SETTERS
  def test_set_student_name
    @student.set_student_name("Jordan")
    assert_equal("Jordan", @student.get_student_name)
  end

  def test_set_cohort
    @student.set_cohort("G16")
    assert_equal("G16", @student.get_cohort)
  end


  def test_talk
    @student.set_talk("I can talk")
    assert_equal("I can talk", @student.get_talk)
  end

  def test_favourite_language()
    # @student.my_fav_language("Ruby")
    assert_equal("I love Ruby", @student.my_fav_language("Ruby")
)
  end
end

#def initialize(input_holder_name, input_balance, input_type)
#   @holder_name = input_holder_name
#   @balance = input_balance
#   @type = input_type
#
#   def pay_in(value)
#     @balance += value
#   end
#
#   def pay_monthly_fee()
#     if @type =="business"
#       @balance -= 50
#     elsif @type =="personal"
#       @balance -= 10
#     end
#   end
# end
