require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../extension.rb')

class TestPetShop < Minitest::Test


def setup
  @books= [
    title: "lord_of_the_rings",
    rental_details: {
      student_name: "Jeff",
      date: "01/12/16"
    },
  {
    title: "war_and_peace",
    rental_details:{
      student_name: "Bob",
      date: "14/01/17"
    },
  }





end
