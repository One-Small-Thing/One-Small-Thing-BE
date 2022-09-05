class RepresentativeFacade

  def self.find_each_rep(address)
    reps = RepresentativeService.find_reps(address)
    ofc = reps[:offices].map { |office| Office.new(office)}

    reps[:officials].map do |rep|
      rep[:indicies] ||= []
      rep[:indicies] << ofc
    end

    reps[:officials].each_with_index { |official, index| Representative.new(official, index) }
  end

end
