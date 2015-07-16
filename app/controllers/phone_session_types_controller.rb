class PhoneSessionTypesController < ApplicationController
  before_action :authorize_user

  def index
    @phone_session_types = PhoneSessionType.all
  end

  def show
    @phone_session_type = PhoneSessionType.find(params[:id])
  end



  def new
    @phone_session_type = PhoneSessionType.new
  end

  def create
    @phone_session_type = PhoneSessionType.new(phone_session_type_params)

    respond_to do |format|
      if @phone_session_type.save
        format.html { redirect_to phone_session_types_path, notice: 'Phone session type was successfully created.' }
        format.json { render :show, status: :created, location: @phone_session_type }
      else
        format.html { render :new }
        format.json { render json: phone_session_types_path.errors, status: :unprocessable_entity }
      end
    end
  end




  def edit
    @phone_session_type = PhoneSessionType.find(params[:id])
  end

  def update
    @phone_session_type = PhoneSessionType.find(params[:id])
    respond_to do |format|
      if @phone_session_type.update(phone_session_type_params)
        format.html { redirect_to phone_session_types_path, notice: 'Phone session type was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_session_type }
      else
        format.html { render :edit }
        format.json { render json: phone_session_types_path.errors, status: :unprocessable_entity }
      end
    end
  end



  def destroy
    @phone_session_type = PhoneSessionType.find(params[:id])
    @phone_session_type.destroy
    respond_to do |format|
      format.html { redirect_to phone_session_types_url, notice: 'Phone session type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def phone_session_type_params
      params.require(:phone_session_type).permit(:name)
    end
end
