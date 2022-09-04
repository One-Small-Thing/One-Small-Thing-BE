class Representative
  attr_reader :name,
              :address,
              :party,
              :phones,
              :emails

  def initialize(official)
    # @office = official[:offices][:name]
    @name = official[:name]
    @address = official[:address]
    @party = official[:party]
    @phones = official[:phones][0]
    @emails = official[:emails]
  end
end
