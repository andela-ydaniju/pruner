class LinksController < ApplicationController
  before_action :set_link, only: [:show]
  # before_action :logged_in_user, only: [:create, :destroy]
  before_action :right_user, only: :destroy
  def index
    @links = Link.all
  end

  def show
  end

  def create
    if signed_in?
      @link = Link.new(link_params)
      @link.user_id = current_user.id
      @link.save
      redirect_to current_user
    else
      @link = Link.new(link_params)
      @link.save
      flash[:link] = full_url(@link)
      flash[:success] = "Link successfully created #{flash[:link]}"
      redirect_to root_path
    end
  end

  def destroy
    @link.destroy
    redirect_to root_path unless signed_in?
    flash[:success] = "Link has been deleted"
    redirect_to request.referrer || root_url
  end

  private

  def set_link
    @link = Link.find_by(shortened_link: params[:shortened_link])
  end

  def link_params
    params.require(:link).permit(:url_input, :user_id)
  end

  def right_user
    @link = current_user.links.find_by(id: params[:id])
    redirect_to root_url if @link.nil?
  end

  def full_url(link)
    root_url + link.shortened_link.to_s
  end

  def new_link?
    Link.where(url_input: url_input).where(user_id: id).blank?
  end
end
