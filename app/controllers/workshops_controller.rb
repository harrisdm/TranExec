class WorkshopsController < ApplicationController
  before_action :authorize_user

  def index
    @workshops = Workshop.all
  end

  def show
    @workshop = Workshop.find(params[:id])
    @participants = @workshop.project.participants
    #raise params.inspect
  end

  def new
    # Set the @project for displaying parent project information
    @project = Project.find(params[:project_id])
    @workshop = @project.workshops.build
    # form path differs between add and edit because of shallow nesting.
    #@path sets the correct routing with shorthand
    @path = [@project, @workshop]
    # 2.times { @workshop.coaching_sessions.build }
  end

  def create
    @workshop = Workshop.new(workshop_params)
    # @project set for the render :new on fail
    @project = Project.find(params[:project_id])
    @path = [@project, @workshop]

    if @workshop.save
      redirect_to project_path(@project), notice: 'Workshop was successfully created.'
    else
      render :new
    end
  end

  def edit
    @workshop = Workshop.find(params[:id])
    # Set the @project for displaying parent project information
    @project = @workshop.project
    @path = @workshop
  end

  def update
    @workshop = Workshop.find(params[:id])
    # @project set for the render :new on fail
    @project = @workshop.project
    @path = @workshop

    if @workshop.update(workshop_params)
      redirect_to workshop_path(@workshop), notice: 'Workshop was successfully updated.'
    else
      render :edit
    end

  end

  def destroy
    @workshop = Workshop.find(params[:id])
    @workshop.destroy
    redirect_to project_path(@workshop.project_id), notice: 'Workshop was successfully destroyed.'
  end

  private
    def workshop_params
      params.require(:workshop).permit(:datetime, :location, :workshop_type_id, :project_id, :appointment_block_id, [coaching_sessions_attributes: [:id, :user_id, :_destroy]])
    end
end
