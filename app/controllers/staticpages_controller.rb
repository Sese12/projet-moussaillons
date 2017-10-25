class StaticpagesController < ApplicationController
  def index

    @corsairs = Corsair.all
  end
end
 