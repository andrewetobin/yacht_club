require 'minitest/autorun'
require 'minitest/pride'
require './lib/yacht'
require './lib/captain'
require './lib/yacht_club'

class YachtClubTest < Minitest::Test

  def test_it_exists
    yacht_club = YachtClub.new("Mike's Yacht Club")

    assert_instance_of YachtClub, yacht_club
  end

  def test_add_member
    yacht_club = YachtClub.new("Mike's Yacht Club")
    captain = Captain.new("Thurston", "Howell", "10_000_000")
    yacht_1 = Yacht.new("S.S. Minnow", 40)
    captain.add_yacht(yacht_1)

    assert_equal "Thurston Howell added!", yacht_club.add_member(captain)
    assert_equal ["Howell"], yacht_club.members
  end

  def test_ship_log
    yacht_club = YachtClub.new("Mike's Yacht Club")
    captain_1 = Captain.new("Thurston", "Howell", "10_000_000")
    yacht_1 = Yacht.new("S.S. Minnow", 40)
    captain_1.add_yacht(yacht_1)
    captain_2 = Captain.new("Kathryn", "Janeway", "100_000_000" )
    yacht_2 = Yacht.new("Voyager", 500)
    captain_2.add_yacht(yacht_2)
    yacht_club.add_member(captain_1)
    yacht_club.add_member(captain_2)
    expected = {"S.S. Minnow" => "Thurston Howell", "Voyager" => "Kathryn Janeway"}
    assert_equal expected, yacht_club.ship_log
  end

end

# yacht_club = YachtClub.new("Mike's Yacht Club")
# # => <#YachtClub...>
#
# captain_1 = Captain.new("Thurston", "Howell", "10_000_000")
# # => <#Captain...>
# yacht_1 = Yacht.new("S.S. Minnow", 40)
# # => <#Yacht...>
# captain.add_yacht(yacht_1)
# # => <#Yacht...>
#
# captain_2 = Captain.new("Kathryn", "Janeway", "100_000_000" )
# # => <#Captain...>
# yacht_2 = Yacht.new("Voyager", 500)
# # => <#Yacht...>
# captain_2.add_yacht(yacht_2)
# # => <#Yacht...>
#
# yacht_club.add_member(captain_1)
# # => "Thurston Howell added!"
#
# yacht_club.add_member(captain_2)
# # => "Kathryn Janeway added!"
#
# yacht_club.ship_log
# # => {"S.S. Minnow" => "Thurston Howell", "Voyager" => "Kathryn Janeway"}
