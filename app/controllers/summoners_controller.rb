class SummonersController < ApplicationController
  def index
    @summoners = Summoner.all
  end

  def show
    @summoners = Summoner.find(params[:id]
  end
end
