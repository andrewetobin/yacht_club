class Yacht
  attr_reader :name, :length

  def initialize(name, length)
    @name = name
    @length = length
    @sailing = false
  end

  def sailing?
    @sailing
  end

  def sail
    @sailing = true
    "Aye, aye!"
  end



end
