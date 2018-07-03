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



end





# yacht = Yacht.new("S.S. Minnow", 40)
# # => <#Yacht...>
# yacht.name
# # => "S.S. Minnow"
# yacht.length
# # => 40
# yacht.sailing?
# # => false
# yacht.sail
# # => "Aye, aye!"
# yacht.sailing?
# # => true
