class RepresentativeFacade

  def self.find_each_rep(address)
    reps = RepresentativeService.find_reps(address)
    ofc = reps[:offices].map { |office| Office.new(office)}

    reps[:officials].map.with_index do |rep, index|
      ofc.each do |x|
        if x.indicies.include?(index)
          rep[:office] = x.name
        end
      end
    end

    reps[:officials].map { |official| Representative.new(official) }
  end

end
