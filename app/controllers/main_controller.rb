class MainController < ApplicationController

  def index
    @presenter = ResultsPresenter.new(params)
  end

end
