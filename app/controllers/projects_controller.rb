class ProjectsController < ApplicationController
  before_action :authorize_user

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @workshops = Workshop.where(project_id: params[:id]).order(datetime: :desc)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

      if @project.save
        redirect_to @project, notice: 'Project was successfully created.'
      else
        render :new
      end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
      if @project.update(project_params)
        redirect_to @project, notice: 'Project was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_url, notice: 'Project was successfully destroyed.'
  end

  private
    def project_params
      params.require(:project).permit(:company, :name)
    end
end
