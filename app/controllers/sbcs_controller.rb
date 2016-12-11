class SbcsController < ApplicationController
  def index
    @sbcs = Sbc.all
  end
end
