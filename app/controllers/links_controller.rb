class LinksController < ApplicationController
  before_action :set_link, only: [:show]
  def index
    @links = Link.all
  end

  def show
    link = Link.find_by_shortened_url(params[:shortened_url])
    begin
      if link.active
        redirect_to link.name, status: 301
        # link.visits += 1
        # link.save
      else
        flash[:alert] = "Sorry, this link is now inactive"
        redirect_to root_path
      end
    rescue NoMethodError
      flash[:alert] = "Invalid url"
      redirect_to root_path
    end
  end

  def create
    if signed_in?
      link = Link.new(link_params)
      link.user_id = current_user.id
      link.save
      redirect_to current_user
    else
      Link.create!(link_params)
      redirect_to root_path
    end
  end

  private

  def set_link
    @link = Link.find_by(shortened_link: params[:shortened_link])
  end

  def full_url
    root_url + link.shortened_link
  end

  def link_params
    params.require(:link).permit(:name, :user_id)
  end

  # def name
  #   link_params[:name]
  # end
  #
  # def id
  #   link_params[:user_id]
  # end
  #
  # def link
  #   Link.new(name: name, user_id: id)
  # end

  def new_link?
    Link.where(name: name).where(user_id: id).blank?
  end
end
