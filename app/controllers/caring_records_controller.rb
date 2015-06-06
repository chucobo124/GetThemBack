class CaringRecordsController < ApplicationController
  before_action :set_caring_record, only: [:show, :edit, :update, :destroy]

  # GET /caring_records
  # GET /caring_records.json
  def index
    @caring_records = CaringRecord.all
  end

  # GET /caring_records/1
  # GET /caring_records/1.json
  def show
  end

  # GET /caring_records/new
  def new
    @caring_record = CaringRecord.new
  end

  # GET /caring_records/1/edit
  def edit
  end

  # POST /caring_records
  # POST /caring_records.json
  def create
    @caring_record = CaringRecord.new(caring_record_params)

    respond_to do |format|
      if @caring_record.save
        format.html { redirect_to @caring_record, notice: 'Caring record was successfully created.' }
        format.json { render :show, status: :created, location: @caring_record }
      else
        format.html { render :new }
        format.json { render json: @caring_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caring_records/1
  # PATCH/PUT /caring_records/1.json
  def update
    respond_to do |format|
      if @caring_record.update(caring_record_params)
        format.html { redirect_to @caring_record, notice: 'Caring record was successfully updated.' }
        format.json { render :show, status: :ok, location: @caring_record }
      else
        format.html { render :edit }
        format.json { render json: @caring_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caring_records/1
  # DELETE /caring_records/1.json
  def destroy
    @caring_record.destroy
    respond_to do |format|
      format.html { redirect_to caring_records_url, notice: 'Caring record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caring_record
      @caring_record = CaringRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caring_record_params
      params.require(:caring_record).permit(:studentId, :careMemberId, :careDate, :careMethod, :description, :reasonsForLeaving, :callback)
    end
end
