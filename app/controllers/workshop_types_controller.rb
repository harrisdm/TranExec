class WorkshopTypesController < ApplicationController
  before_action :authorize_user
  
  def index
    @workshop_types = WorkshopType.all
  end

  def show
    @workshop_type = WorkshopType.find(params[:id])
  end


  def new
    @workshop_type = WorkshopType.new
  end

  def create
    @workshop_type = WorkshopType.new(workshop_type_params)

    respond_to do |format|
      if @workshop_type.save
        format.html { redirect_to workshop_types_path, notice: 'Workshop type was successfully created.' }
        format.json { render :show, status: :created, location: @workshop_type }
      else
        format.html { render :new }
        format.json { render json: workshop_types_path.errors, status: :unprocessable_entity }
      end
    end
  end



  def edit
    @workshop_type = WorkshopType.find(params[:id])
  end

  def update
    @workshop_type = WorkshopType.find(params[:id])
    respond_to do |format|
      if @workshop_type.update(workshop_type_params)
        format.html { redirect_to workshop_types_path, notice: 'Workshop type was successfully updated.' }
        format.json { render :show, status: :ok, location: @workshop_type }
      else
        format.html { render :edit }
        format.json { render json: workshop_types_path.errors, status: :unprocessable_entity }
      end
    end
  end



  def destroy
    @workshop_type = WorkshopType.find(params[:id])
    @workshop_type.destroy
    respond_to do |format|
      format.html { redirect_to workshop_types_url, notice: 'Workshop type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def workshop_type_params
      params.require(:workshop_type).permit(:name)
    end
end
