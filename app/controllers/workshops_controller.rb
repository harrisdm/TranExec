class WorkshopsController < ApplicationController
  before_action :set_workshop, only: [:show, :edit, :update, :destroy]

  # GET /workshops
  # GET /workshops.json
  def index
    @workshops = Workshop.all
  end

  # GET /workshops/1
  # GET /workshops/1.json
  def show
  end

  # GET /workshops/new
  def new
    @project = Project.find(params[:project_id])
    @workshop = Workshop.new
    2.times { @workshop.coaching_sessions.build }
    # raise params.inspect
  end

  # GET /workshops/1/edit
  def edit
  end

  # POST /workshops
  # POST /workshops.json
  def create
    @workshop = Workshop.new(workshop_params)

    respond_to do |format|
      if @workshop.save
        format.html { redirect_to project_path(workshop_params[:project_id]), notice: 'Workshop was successfully created.' }
        format.json { render :show, status: :created, location: @workshop }
      else
        format.html { render :new }
        format.json { render json: @workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workshops/1
  # PATCH/PUT /workshops/1.json
  def update
    #raise params.inspect
    respond_to do |format|
      if @workshop.update(workshop_params)
        format.html { redirect_to project_path(workshop_params[:project_id]), notice: 'Workshop was successfully updated.' }
        format.json { render :show, status: :ok, location: @workshop }
      else
        # format.html { render :edit }
        format.html { redirect_to edit_project_workshop_path(project_id: @workshop.project_id, id: @workshop.id) }
        format.json { render json: @workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workshops/1
  # DELETE /workshops/1.json
  def destroy
    #raise params.inspect
    @workshop.destroy
    respond_to do |format|
      format.html { redirect_to project_path(params[:project_id]), notice: 'Workshop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workshop
      @workshop = Workshop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workshop_params
      params.require(:workshop).permit(:datetime, :location, :workshop_type_id, :project_id, [coaching_sessions_attributes: [:id, :user_id, :_destroy]])
    end
end
