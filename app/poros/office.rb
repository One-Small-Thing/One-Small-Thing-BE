class Office
  attr_reader :name,
              :indicies

  def initialize(office)
    @name = office[:name]
    @indicies = office[:officialIndices]
  end
end
