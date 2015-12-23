class GeneralsController < ApplicationController
  def index
    @link = Link.new
    @display_links = Link.first(9)
  end
end
