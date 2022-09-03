class RepresentativeFacade

  def self.find_each_rep(address)
    rep = RepresentativeService.find_reps(address)
    json[:representatives].map { |hash| Representative.new(hash)}
  end

end
