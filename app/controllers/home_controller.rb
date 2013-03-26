class HomeController < ApplicationController
  def index
  	@courses = Course.all
	@date = params[:month] ? Date.parse(params[:month]) : Date.today
  end

  def search
    @courses = Course.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end
end
