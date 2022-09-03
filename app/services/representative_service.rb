class RepresentativeService < BaseService

  def self.find_reps(state)
    response = conn_reps.get("civicinfo/v2/representatives")
    get_json(response)
  end

end
