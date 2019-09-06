class HouseFacade

def all_houses
  houses = grab_house.map do |house|
    House.new(house)
  end

end

private

def grab_house
  WesterosApi.new(@query).make_call2
end

end
