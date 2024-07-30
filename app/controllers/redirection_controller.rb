# frozen_string_literal: true

class RedirectionController < ApplicationController
  def show
    @link = Link.find_by_shortened_link(params[:path])

    return disabled_action unless @link.enabled

    @link.with_lock('FOR UPDATE NOWAIT') do
      @link.visits += 1
      @link.save!
    end

    redirect_to @link.url_input, status: 301, only_path: true, allow_other_host: true
  rescue NoMethodError
    flash[:error] = 'Link must have been destroyed'
    redirect_to root_path
  end
end
