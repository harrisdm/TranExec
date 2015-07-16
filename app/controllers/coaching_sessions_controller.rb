class CoachingSessionsController < ApplicationController
  before_action :authorize_user


  def index
    @coaching_sessions = CoachingSession.all
  end

  def show
    @coaching_session = CoachingSession.find(params[:id])
  end



  def new
    @coaching_session = CoachingSession.new
  end

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



  def edit
    @coaching_session = CoachingSession.find(params[:id])
  end

  def update
    @coaching_session = CoachingSession.find(params[:id])
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



  def destroy
    @coaching_session = CoachingSession.find(params[:id])
    @coaching_session.destroy
    respond_to do |format|
      format.html { redirect_to coaching_sessions_url, notice: 'Coaching session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    def coaching_session_params
      params.require(:coaching_session).permit(:user_id, :workshop_id)
    end
end
