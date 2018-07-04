require 'minitest/autorun'
require 'minitest/pride'
require './lib/yacht'

class YachtTest < Minitest::Test

  def test_is_exists
    yacht = Yacht.new("S.S. Minnow", 40)

    assert_instance_of Yacht, yacht
  end

  def test_it_has_attributes
    yacht = Yacht.new("S.S. Minnow", 40)

    assert_equal "S.S. Minnow", yacht.name
    assert_equal 40, yacht.length
  end

  def test_it_is_not_sailing_at_beginning
    yacht = Yacht.new("S.S. Minnow", 40)

    assert_equal false, yacht.sailing?
  end

  def test_sail
    yacht = Yacht.new("S.S. Minnow", 40)

    assert_equal false, yacht.sailing?
    assert_equal "Aye, aye!", yacht.sail
    assert_equal true, yacht.sailing?
  end



end
