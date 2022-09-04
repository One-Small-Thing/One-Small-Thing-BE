class RepresentativeFacade

  def self.find_each_rep(address)
    json = RepresentativeService.find_reps(address)
    json[:officials].map { |official| Representative.new(official)}
  end

end
