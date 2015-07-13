class PhoneSessionsController < ApplicationController
  before_action :set_phone_session, only: [:show, :edit, :update, :destroy]

  # GET /phone_sessions
  # GET /phone_sessions.json
  def index
    @phone_sessions = PhoneSession.all
  end

  # GET /phone_sessions/1
  # GET /phone_sessions/1.json
  def show
  end

  # GET /phone_sessions/new
  def new
    @phone_session = PhoneSession.new
  end

  # GET /phone_sessions/1/edit
  def edit
  end

  # POST /phone_sessions
  # POST /phone_sessions.json
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

  # PATCH/PUT /phone_sessions/1
  # PATCH/PUT /phone_sessions/1.json
  def update
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

  # DELETE /phone_sessions/1
  # DELETE /phone_sessions/1.json
  def destroy
    @phone_session.destroy
    respond_to do |format|
      format.html { redirect_to phone_sessions_url, notice: 'Phone session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_session
      @phone_session = PhoneSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_session_params
      params.require(:phone_session).permit(:client_id, :phone_session_type_id, :phone, :reminder, :email, :user_id)
    end
end
