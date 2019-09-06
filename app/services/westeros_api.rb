class WesterosApi

def initialize(house)
  @house = house
end

def make_call
resp = conn.get("/api/v1/house/#{@house}")
JSON.parse(resp.body)
end

def make_call2(num = "")
resp = conn2.get("/api/v1/house/#{num}")
JSON.parse(resp.body)
end

  private

  def conn
    conn = Faraday.new(url: "http://westerosapi.herokuapp.com") do |faraday|
      faraday.params['api_key'] = ENV['API_KEY']
      faraday.adapter Faraday.default_adapter
    end
  end

  def conn2
    conn = Faraday.new(url: "https://westeros-as-a-service.herokuapp.com") do |faraday|
      faraday.headers['x_api_key'] = 'dragon'
      faraday.adapter Faraday.default_adapter
    end
  end

end
