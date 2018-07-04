class Captain
  attr_reader :first_name, :last_name, :net_worth, :yachts 

  def initialize(first_name, last_name, net_worth)
    @first_name = first_name
    @last_name = last_name
    @net_worth = net_worth
    @yachts = []
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_yacht(yacht)
    @yachts << yacht
  end



end
