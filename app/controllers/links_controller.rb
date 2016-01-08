class LinksController < ApplicationController
  # before_action :set_link, only: [:show]
  before_action :right_user, only: :destroy
  def index
    @links = Link.all
  end

  def show
  end

  def create
    if signed_in?
      if new_link_with_vanity_string?
        vanity_url_builder
        redirect_to current_user
      elsif
        ordinary_url_builder
      end
    else
      ordinary_url_builder
    end
  end

  def destroy
    @link.destroy
    redirect_to root_path unless signed_in?
    flash[:success] = "Link destroyed"
    redirect_to request.referrer || root_url
  end

  def redirector
    @link = Link.find_by_shortened_link(params[:path])
    redirect_to @link.url_input, status: 301
  end
end
