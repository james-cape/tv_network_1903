require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require 'pry'

class CharacterTest < Minitest::Test

  def test_character_exists
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    assert_instance_of Character, kitt
  end


  def test_character_has_a_name
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    assert_equal "KITT", kitt.name
  end

  def test_character_has_a_actor
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    assert_equal "William Daniels", kitt.actor
  end

  def test_character_has_a_salary
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    assert_equal 1000000, kitt.salary
  end

  def test_character_can_have_different_name
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    assert_equal "Michael Knight", michael_knight.name
  end
end
