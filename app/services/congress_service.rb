class CongressService < BaseService

  def self.find_congress(state)
    response = conn_congress.get("/congress/v1/117/senate/members.json")
    get_json(response)
  end
end
