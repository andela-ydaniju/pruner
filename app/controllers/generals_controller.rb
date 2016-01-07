class GeneralsController < ApplicationController
  def index
    @display_top_links = Link.top_links
    @display_latest_links = Link.latest_links
    @link = signed_in? ? current_user.links.build : Link.new
  end
end
