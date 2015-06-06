class ClassSheetsController < ApplicationController
  before_action :set_class_sheet, only: [:show, :edit, :update, :destroy]

  # GET /class_sheets
  # GET /class_sheets.json
  def index
    @class_sheets = ClassSheet.all
  end

  # GET /class_sheets/1
  # GET /class_sheets/1.json
  def show
  end

  # GET /class_sheets/new
  def new
    @class_sheet = ClassSheet.new
  end

  # GET /class_sheets/1/edit
  def edit
  end

  # POST /class_sheets
  # POST /class_sheets.json
  def create
    @class_sheet = ClassSheet.new(class_sheet_params)

    respond_to do |format|
      if @class_sheet.save
        format.html { redirect_to @class_sheet, notice: 'Class sheet was successfully created.' }
        format.json { render :show, status: :created, location: @class_sheet }
      else
        format.html { render :new }
        format.json { render json: @class_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_sheets/1
  # PATCH/PUT /class_sheets/1.json
  def update
    respond_to do |format|
      if @class_sheet.update(class_sheet_params)
        format.html { redirect_to @class_sheet, notice: 'Class sheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_sheet }
      else
        format.html { render :edit }
        format.json { render json: @class_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_sheets/1
  # DELETE /class_sheets/1.json
  def destroy
    @class_sheet.destroy
    respond_to do |format|
      format.html { redirect_to class_sheets_url, notice: 'Class sheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_sheet
      @class_sheet = ClassSheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_sheet_params
      params.require(:class_sheet).permit(:name, :classHours, :venue)
    end
end
