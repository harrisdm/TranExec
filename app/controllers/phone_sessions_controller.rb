class PhoneSessionsController < ApplicationController
  before_action :authorize_user

  def index
    @phone_sessions = PhoneSession.all
  end

  def show
    @phone_session = PhoneSession.find(params[:id])
  end


  def new
    @phone_session = PhoneSession.new
  end

  def create
    @phone_session = PhoneSession.new(phone_session_params)

    respond_to do |format|
      if @phone_session.save
        format.html { redirect_to @phone_session, notice: 'Phone session was successfully created.' }
        format.json { render :show, status: :created, location: @phone_session }
      else
        format.html { render :new }
        format.json { render json: @phone_session.errors, status: :unprocessable_entity }
      end
    end
  end


  def edit
    @phone_session = PhoneSession.find(params[:id])
  end

  def update
    @phone_session = PhoneSession.find(params[:id])
    respond_to do |format|
      if @phone_session.update(phone_session_params)
        format.html { redirect_to @phone_session, notice: 'Phone session was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_session }
      else
        format.html { render :edit }
        format.json { render json: @phone_session.errors, status: :unprocessable_entity }
      end
    end
  end



  def destroy
    @phone_session = PhoneSession.find(params[:id])
    @phone_session.destroy
    respond_to do |format|
      format.html { redirect_to phone_sessions_url, notice: 'Phone session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    def phone_session_params
      params.require(:phone_session).permit(:client_id, :phone_session_type_id, :phone, :reminder, :email, :user_id)
    end
end
