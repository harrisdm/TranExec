class PhoneSessionTypesController < ApplicationController
  before_action :set_phone_session_type, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user

  # GET /phone_session_types
  # GET /phone_session_types.json
  def index
    @phone_session_types = PhoneSessionType.all
  end

  # GET /phone_session_types/1
  # GET /phone_session_types/1.json
  def show
  end

  # GET /phone_session_types/new
  def new
    @phone_session_type = PhoneSessionType.new
  end

  # GET /phone_session_types/1/edit
  def edit
  end

  # POST /phone_session_types
  # POST /phone_session_types.json
  def create
    @phone_session_type = PhoneSessionType.new(phone_session_type_params)

    respond_to do |format|
      if @phone_session_type.save
        format.html { redirect_to @phone_session_type, notice: 'Phone session type was successfully created.' }
        format.json { render :show, status: :created, location: @phone_session_type }
      else
        format.html { render :new }
        format.json { render json: @phone_session_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_session_types/1
  # PATCH/PUT /phone_session_types/1.json
  def update
    respond_to do |format|
      if @phone_session_type.update(phone_session_type_params)
        format.html { redirect_to @phone_session_type, notice: 'Phone session type was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_session_type }
      else
        format.html { render :edit }
        format.json { render json: @phone_session_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_session_types/1
  # DELETE /phone_session_types/1.json
  def destroy
    @phone_session_type.destroy
    respond_to do |format|
      format.html { redirect_to phone_session_types_url, notice: 'Phone session type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_session_type
      @phone_session_type = PhoneSessionType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_session_type_params
      params.require(:phone_session_type).permit(:name)
    end
end
