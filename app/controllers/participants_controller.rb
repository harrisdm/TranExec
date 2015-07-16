class ParticipantsController < ApplicationController
  before_action :authorize_user

  def index
    @participants = Participant.all
  end

  def show
    @participant = Participant.find(params[:id])
  end



  def new
    @participant = Participant.new
  end

  def create
    #raise params.inspect
    @participant = Participant.new(participant_params)

      if @participant.save
        workshop = Workshop.find(params[:workshop_id])
        @participant.workshops << workshop

        redirect_to workshop_path(workshop), notice: 'Participant was successfully created.'
      else
        render :new
    end
  end



  def edit
    @participant = Participant.find(params[:id])
  end

  def update
    @participant = Participant.find(params[:id])
      if @participant.update(participant_params)
        redirect_to @participant, notice: 'Participant was successfully updated.'
      else
        render :edit
      end
  end



  def destroy
    @participant = Participant.find(params[:id])
    @participant.destroy
    redirect_to project_participants_path(@participant.project_id), notice: 'Participant was successfully destroyed.'
  end


  private
    def participant_params
      params.require(:participant).permit(:name, :project_id)
    end
end
