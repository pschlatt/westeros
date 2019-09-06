class HouseController < ApplicationController

  def index
    render locals: {house: HouseFacade.new}
  end

end
