class PermissionSheetsController < ApplicationController
  before_action :set_permission_sheet, only: [:show, :edit, :update, :destroy]

  # GET /permission_sheets
  # GET /permission_sheets.json
  def index
    @permission_sheets = PermissionSheet.all
  end

  # GET /permission_sheets/1
  # GET /permission_sheets/1.json
  def show
  end

  # GET /permission_sheets/new
  def new
    @permission_sheet = PermissionSheet.new
  end

  # GET /permission_sheets/1/edit
  def edit
  end

  # POST /permission_sheets
  # POST /permission_sheets.json
  def create
    @permission_sheet = PermissionSheet.new(permission_sheet_params)

    respond_to do |format|
      if @permission_sheet.save
        format.html { redirect_to @permission_sheet, notice: 'Permission sheet was successfully created.' }
        format.json { render :show, status: :created, location: @permission_sheet }
      else
        format.html { render :new }
        format.json { render json: @permission_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permission_sheets/1
  # PATCH/PUT /permission_sheets/1.json
  def update
    respond_to do |format|
      if @permission_sheet.update(permission_sheet_params)
        format.html { redirect_to @permission_sheet, notice: 'Permission sheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @permission_sheet }
      else
        format.html { render :edit }
        format.json { render json: @permission_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permission_sheets/1
  # DELETE /permission_sheets/1.json
  def destroy
    @permission_sheet.destroy
    respond_to do |format|
      format.html { redirect_to permission_sheets_url, notice: 'Permission sheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permission_sheet
      @permission_sheet = PermissionSheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def permission_sheet_params
      params.require(:permission_sheet).permit(:name)
    end
end
