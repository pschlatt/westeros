class HomeController < ApplicationController

  def index
    render locals: {house: House.new}
  end

end
