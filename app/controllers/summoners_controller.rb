class SummonersController < ApplicationController
  def index
    @summoners = Summoner.all
  end

  def show
  end
end
