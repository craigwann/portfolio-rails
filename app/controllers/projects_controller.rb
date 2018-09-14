class ProjectsController < ApplicationController
  load_and_authorize_resource
  skip_before_action :authenticate_user!, :only => [:index]

  def index
    @projects = Project.all
  end

  def show
    skip_before_action :authenticate_user!, :only => [:index]
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:notice] = "Project successfully added!"
      redirect_to  projects_path
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project= Project.find(params[:id])
    if @project.update(project_params)
      redirect_to projects_path
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "Project successfully destroyed!"
    redirect_to projects_path
  end

private
  def project_params
    params.require(:project).permit(:name)
  end

end
