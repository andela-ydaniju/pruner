# frozen_string_literal: true

class LinkService
  class << self
    Result = Data.define(:success, :link)

    def create_link(params:, user:)
      if new_link_with_vanity_string?(params)
        return vanity_url_builder(params, user)
      end

      ordinary_url_builder(params, user)
    end

    private

    def new_link_with_vanity_string?(params)
      params[:shortened_link].present?
    end

    def vanity_url_builder(params, user)
      @link = Link.new(params)
      @link.user_id = user&.id

      if @link.save
        Result.new(true, @link)
      else
        Result.new(false, @link)
      end
    end

    def ordinary_url_builder(params, user)(user)
      @link = Link.new(link_params_from(params))
      @link.user_id = user&.id

      if @link.save
        Result.new(true, @link)
      else
        Result.new(false, @link)
      end
    end

    def link_params_from(params)
      params.require(:link).permit(:url_input, :shortened_link, :user_id)
    end

    def disabled_action
      flash[:error] = 'Link is disabled'
      redirect_to root_path
    end
  end
end
