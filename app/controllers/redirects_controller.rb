class RedirectsController < ApplicationController
  def index
    url = Url.find_by_slug(params[:slug]).name
    redirect_to url
  end
end
