class LinksController < ApplicationController
  before_action :right_user, only: :destroy
  def index
  end

  def show
  end

  def create
    if signed_in?
      if new_link_with_vanity_string?
        vanity_url_builder
        redirect_to current_user
      else
        ordinary_url_builder
      end
    else
      ordinary_url_builder
    end
  end

  def destroy
    @link.destroy
    redirect_to root_path unless signed_in?
    flash[:success] = "Link successfully destroyed"
    redirect_to request.referrer || root_url
  end

  def edit
    @link = Link.new
    @link_details = Link.where(user_id: params[:id]).where(user_id:
     current_user.id).first
  end

  def update
    updated_params = params.require(:link).permit(:url_input, :enabled)
    target_url = http_prefixer(updated_params[:url_input])
    status = bool_check(updated_params[:enabled])

    current_link = Link.find_by(params[:id])

    if target_url == current_link.url_input && status == current_link.enabled
      flash[:alert] = "No changes made"
      redirect_to edit_path
    else
      current_link.update_attributes(url_input: target_url, enabled: status)
      flash[:alert] = "Link updated"
      redirect_to current_user
    end
  end

  def redirector
    @link = Link.find_by_shortened_link(params[:path])
    redirect_to @link.url_input, status: 301
    if @link.enabled
      @link.visits += 1
      @link.save
    else
      flash[:error] = "Link has been disabled"
    end
  end
end
