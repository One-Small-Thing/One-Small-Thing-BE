class Congress
  attr_reader :full_name,
              :url,
              :party,
              :twitter,
              :contact,
              :next_election,
              :phone

  def initialize(data)
    @full_name = full_name(data)
    @url = data[:url]
    @party = data[:party]
    @twitter = data[:twitter_account]
    @contact = data[:contact_form]
    @next_election = data[:next_election]
    @phone = data[:phone]
  end

  private
    def full_name(data)
      [data[:first_name], " ", data[:last_name]].compact.join
    end
end
