class SearchController < ApplicationController

  def index
    render locals: {search: SearchFacade.new(params[:query])}
  end

end
