require 'minitest/autorun'
require 'minitest/pride'
require './lib/captain'
require './lib/yacht'


class CaptainTest < Minitest::Test

  def test_it_exists
    captain = Captain.new("Thurston", "Howell", "10_000_000")

    assert_instance_of Captain, captain
  end

  def test_it_has_attributes
    captain = Captain.new("Thurston", "Howell", "10_000_000")

    assert_equal 10000000, captain.net_worth
    assert_equal "Thurston Howell", captain.full_name
  end

  def test_captain_starts_with_no_yachts
    captain = Captain.new("Thurston", "Howell", "10_000_000")

    assert_equal [], captain.yachts
  end

  def test_it_can_add_yachts
    yacht_1 = Yacht.new("S.S. Minnow", 40)
    yacht_2 = Yacht.new("Vajoliroja", 200)
    captain = Captain.new("Thurston", "Howell", "10_000_000")

    assert_equal [], captain.yachts

    assert_equal yacht_1, captain.add_yacht(yacht_1)

    assert_equal [yacht_1], captain.yachts

    aseert_equal yacht_2, captain.add_yacht(yacht_2)
  end

end
