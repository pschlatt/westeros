class WesterosApi

def initialize(house)
  @house = house
end

def make_call
resp = conn.get("/api/v1/house/#{@house}")
JSON.parse(resp.body)
end

  private

  def conn
    conn = Faraday.new(url: "http://westerosapi.herokuapp.com") do |faraday|
      faraday.params['api_key'] = ENV['API_KEY']
      faraday.adapter Faraday.default_adapter
    end
  end

end
