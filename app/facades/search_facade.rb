class SearchFacade

  def initialize(query)
    @query = query
  end
  # def show_house
  #   grab_members
  # end
  def show_house
    members = grab_members["data"][0]["attributes"]["members"].map do |member|
      Member.new(member)
    end
  end

  private

  def grab_members
    WesterosApi.new(@query).make_call
  end

end
