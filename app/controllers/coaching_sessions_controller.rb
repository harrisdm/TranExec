class CoachingSessionsController < ApplicationController
  before_action :set_coaching_session, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user

  # GET /coaching_sessions
  # GET /coaching_sessions.json
  def index
    @coaching_sessions = CoachingSession.all
  end

  # GET /coaching_sessions/1
  # GET /coaching_sessions/1.json
  def show
  end

  # GET /coaching_sessions/new
  def new
    @coaching_session = CoachingSession.new
  end

  # GET /coaching_sessions/1/edit
  def edit
  end

  # POST /coaching_sessions
  # POST /coaching_sessions.json
  def create
    # raise params.inspect
    @coaching_session = CoachingSession.new(coaching_session_params)

    respond_to do |format|
      if @coaching_session.save
        format.html { redirect_to @coaching_session, notice: 'Coaching session was successfully created.' }
        format.json { render :show, status: :created, location: @coaching_session }
      else
        format.html { render :new }
        format.json { render json: @coaching_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coaching_sessions/1
  # PATCH/PUT /coaching_sessions/1.json
  def update
    respond_to do |format|
      if @coaching_session.update(coaching_session_params)
        format.html { redirect_to @coaching_session, notice: 'Coaching session was successfully updated.' }
        format.json { render :show, status: :ok, location: @coaching_session }
      else
        format.html { render :edit }
        format.json { render json: @coaching_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coaching_sessions/1
  # DELETE /coaching_sessions/1.json
  def destroy
    @coaching_session.destroy
    respond_to do |format|
      format.html { redirect_to coaching_sessions_url, notice: 'Coaching session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coaching_session
      @coaching_session = CoachingSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coaching_session_params
      params.require(:coaching_session).permit(:user_id, :workshop_id)
    end
end
