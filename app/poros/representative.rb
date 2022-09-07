class Representative
  attr_reader :name,
              :address,
              :party,
              :phones,
              :emails,
              :office

  def initialize(official)
    @name = official[:name]
    @address = official[:address]
    @party = official[:party]
    @phones = official[:phones]
    @emails = official[:emails]
    @office = official[:office]
  end

end
