class GeneralsController < ApplicationController
  def index
    @display_links = Link.first(9)
    @link = signed_in? ? current_user.links.build : Link.new
  end
end
