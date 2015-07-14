class AppointmentBlocksController < ApplicationController
  # before_action :set_appointment_block, only: [:show, :edit, :update, :destroy]

  # GET /appointment_blocks
  # GET /appointment_blocks.json
  def index
    @appointment_blocks = AppointmentBlock.all
  end

  # GET /appointment_blocks/1
  # GET /appointment_blocks/1.json
  def show
    access_code = params['access_code']
    @appointment_block = AppointmentBlock.find_by :active => true, :code => access_code

    render 'pages/backbone'
  end

  # GET /appointment_blocks/new
  def new
    @appointment_block = AppointmentBlock.new
  end

  # GET /appointment_blocks/1/edit
  def edit
  end

  # POST /appointment_blocks
  # POST /appointment_blocks.json
  def create
    @appointment_block = AppointmentBlock.new(appointment_block_params)

    respond_to do |format|
      if @appointment_block.save
        format.html { redirect_to @appointment_block, notice: 'Appointment block was successfully created.' }
        format.json { render :show, status: :created, location: @appointment_block }
      else
        format.html { render :new }
        format.json { render json: @appointment_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointment_blocks/1
  # PATCH/PUT /appointment_blocks/1.json
  def update
    respond_to do |format|
      if @appointment_block.update(appointment_block_params)
        format.html { redirect_to @appointment_block, notice: 'Appointment block was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment_block }
      else
        format.html { render :edit }
        format.json { render json: @appointment_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointment_blocks/1
  # DELETE /appointment_blocks/1.json
  def destroy
    @appointment_block.destroy
    respond_to do |format|
      format.html { redirect_to appointment_blocks_url, notice: 'Appointment block was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment_block
      @appointment_block = AppointmentBlock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_block_params
      params.require(:appointment_block).permit(:workshop_id, :password_digest, :active)
    end
end
