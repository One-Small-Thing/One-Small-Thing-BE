class CongressFacade

  def self.find_congress_people(state)
    congress = CongressService.find_congress(state)

    state_member = []
    congress[:results].each do |data|
      data[:members].each do |mem|
        if mem[:state] == state.upcase
          state_member << mem
        end
      end
    end
    state_member.map { |member| Congress.new(member) }
  end
end
