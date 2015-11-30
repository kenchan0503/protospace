class TopController < ApplicationController
  def index
    @protos = Prototype.all
  end
end
