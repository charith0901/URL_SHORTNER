class UrlsController < ApplicationController
  def index
    @url = Url.new
    # @urls = Url.all
  end

  def create
    @url = Url.new(url_params)

    if @url.save
      redirect_to display_url_path(@url), notice: "Short URL created!"
    else
      @urls = Url.all
      render :index
    end
  end

  def show
    @url = Url.find_by(short: params[:short])
    if @url
      redirect_to @url.original, allow_other_host: true
    else
      redirect_to root_path, alert: "URL not found!"
    end
  end

  def display
    @url = Url.find_by(id: params[:id])
    if @url.nil?
      redirect_to root_path, alert: "URL not found!"
    end
  end

  private

  def url_params
    params.require(:url).permit(:original)
  end
end
