# frozen_string_literal: true
class LinksController < ApplicationController
  before_action :verify_user_can_delete, only: :destroy

  def index; end

  def show; end

  def create
    @result = LinkService.create_link(params: params, user: current_user)

    if @result.success
      link_success_flash(@result.link)
    else
      link_failure_flash
    end

    redirect_path = signed_in? ? current_user : root_path
    redirect_to redirect_path
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

    if current_link.update(update_params)
      flash[:success] = 'Link updated'
    else
      flash[:error] = 'Link update failed'
    end
    redirect_to current_user
  end

  private

  def verify_user_can_delete
    @link = current_user.links.find_by(id: params[:id])
    redirect_to root_url if @link.nil?
  end

  def link_failure_flash
    flash[:error] = 'An error occurred in creating link, please try again'
  end

  def link_success_flash(link)
    flash[:link] = full_url(link)
    flash[:success] = "Link successfully created #{flash[:link]}"
  end
end
