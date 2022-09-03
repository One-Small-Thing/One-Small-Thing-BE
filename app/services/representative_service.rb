class RepresentativeService < BaseService

  def self.find_reps(address)
    response = conn_reps(address).get("civicinfo/v2/representatives")
    get_json(response)
  end

end
