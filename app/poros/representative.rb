class Representative
  attr_reader :office,
              :name,
              :address,
              :party,
              :phones,
              :emails

  def initialize(hash)
    @office = hash[:offices][:name]
    @name = hash[:officials][:name]
    @address = hash[:officials][:address]
    @party = hash[:officials][:party]
    @phones = hash[:officials][:phones][0]
    @emails = hash[:officials][:emails][0]
  end
end
