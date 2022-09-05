class Representative
  attr_reader :name,
              :address,
              :party,
              :phones,
              :emails,
              :office

  def initialize(official, index)
    @name = official[:name]
    @address = official[:address]
    @party = official[:party]
    @phones = official[:phones][0]
    @emails = official[:emails]
    @office = find_office(official, index)
  end

  def find_office(official, index)
    official[:indicies].each do |list|
      list.each do |office|
        if office.indicies.include?(index)
          return office.name
        end
      end
    end
  end

end
