class LinksController < ApplicationController
  before_action :set_link, only: [:show]
  def index
    @links = Link.all
  end

  def show
    if params[:shortened_link]
      @link = Link.find_by(shortened_link: params[:shortened_link])
      if redirect_to @link.name
        # @link.clicks += 1
        @link.save
      end
    else
      @link = Link.find(params[:id])
    end
  end

  def create
    @link = Link.new(link_params)

    respond_to do |format|
      if @link.save
        format.html do
          redirect_to root_path, notice: "Link was successfully created."
        end
        format.js
        format.json do
          render action: "show", status: :created, location: @link
        end
      else
        format.html { render action: "new" }
        format.json do
          render json: @link.errors, status: :unprocessable_entity
        end
      end
    end
  end

  private

  def set_link
    @link = Link.find_by(shortened_link: params[:shortened_link])
  end

  def link_params
    params.require(:link).permit(:name)
  end
end
