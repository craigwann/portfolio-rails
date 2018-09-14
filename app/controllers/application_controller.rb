class ApplicationController < ActionController::Base
  def index
    @projects = Project.all
    render :index
  end
end
