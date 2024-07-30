# frozen_string_literal: true
class LinksController < ApplicationController
  before_action :right_user, only: :destroy
  def index; end

  def show; end

  def create
    if signed_in?
      if new_link_with_vanity_string?
        vanity_url_builder
      else
        ordinary_url_builder
      end
      redirect_to current_user
    else
      ordinary_url_builder
    end
  end

  def destroy
    @link.destroy
    redirect_to root_path unless signed_in?
    flash[:success] = 'Link successfully destroyed'
    redirect_to request.referrer || root_url
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    update_params = params.require(:link).permit(:url_input, :enabled)
    current_link = Link.find(params[:id])
    current_link.update(update_params)

    flash[:success] = 'Link updated'
    redirect_to current_user
  end
end
