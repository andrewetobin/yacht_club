class YachtClub
  attr_reader :name, :members, :ship_log

  def initialize(name)
    @name = name
    @member_roster = []
    @ship_log = {}
  end

  def add_member(member)
    @member_roster << member
    "#{member.full_name} added!"
  end

  def members
    @member_roster.map do |member|
      member.last_name
    end
  end

  def ship_log
    @member_roster.map do |member|
      @ship_log[member.yachts[0].name] = member.full_name
    end
    return @ship_log
  end
end
