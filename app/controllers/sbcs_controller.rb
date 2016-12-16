class SbcsController < ApplicationController
  def index
    load_sbcs
  end

  def show
    load_sbc
  end

  private

  def load_sbcs
    @sbcs = Sbc.all
  end

  def load_sbc
    @sbc = Sbc.find(params[:id])
  end
end
