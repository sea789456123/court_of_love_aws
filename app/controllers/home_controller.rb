class HomeController < ApplicationController
  def index
  end
  def court
    @courts = Court.all
  end
end
