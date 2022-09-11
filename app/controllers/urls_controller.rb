class UrlsController < ApplicationController
  def index
    @url = Url.new
  end

  def create
    url = Url.new permitted_params

    if url.save
      flash[:success] = "<p class='mb-1'>URL successfully saved!</p><a href='#{url.shortened}'>#{url.shortened}</a>"
    else
      flash[:error] = "<p class='mb-1'>Your URL could not be saved due to the following reasons: <br /> #{url.errors.full_messages.join(', ')}</p>"
    end

    redirect_to root_path
  end

  private

  def permitted_params
    params.require(:url).permit(:name)
  end
end
