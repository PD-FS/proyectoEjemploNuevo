class EnterpriseSectorsController < ApplicationController
  before_action :set_enterprise_sector, only: [:show, :edit, :update, :destroy]

  # GET /enterprise_sectors
  # GET /enterprise_sectors.json
  def index
    @enterprise_sectors = EnterpriseSector.all
  end

  # GET /enterprise_sectors/1
  # GET /enterprise_sectors/1.json
  def show
  end

  # GET /enterprise_sectors/new
  def new
    @enterprise_sector = EnterpriseSector.new
  end

  # GET /enterprise_sectors/1/edit
  def edit
  end

  # POST /enterprise_sectors
  # POST /enterprise_sectors.json
  def create
    @enterprise_sector = EnterpriseSector.new(enterprise_sector_params)

    respond_to do |format|
      if @enterprise_sector.save
        format.html { redirect_to @enterprise_sector, notice: 'Enterprise sector was successfully created.' }
        format.json { render :show, status: :created, location: @enterprise_sector }
      else
        format.html { render :new }
        format.json { render json: @enterprise_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enterprise_sectors/1
  # PATCH/PUT /enterprise_sectors/1.json
  def update
    respond_to do |format|
      if @enterprise_sector.update(enterprise_sector_params)
        format.html { redirect_to @enterprise_sector, notice: 'Enterprise sector was successfully updated.' }
        format.json { render :show, status: :ok, location: @enterprise_sector }
      else
        format.html { render :edit }
        format.json { render json: @enterprise_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enterprise_sectors/1
  # DELETE /enterprise_sectors/1.json
  def destroy
    @enterprise_sector.destroy
    respond_to do |format|
      format.html { redirect_to enterprise_sectors_url, notice: 'Enterprise sector was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enterprise_sector
      @enterprise_sector = EnterpriseSector.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enterprise_sector_params
      params.require(:enterprise_sector).permit(:name, :icon)
    end
end
