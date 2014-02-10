class Admin::AboutusController < ApplicationController
  before_action :set_aboutu, only: [:show, :edit, :update, :destroy]
  layout "backend"

  # GET /admin/aboutus
  # GET /admin/aboutus.json
  def index
    @aboutus = Aboutu.all
  end

  # GET /admin/aboutus/1
  # GET /admin/aboutus/1.json
  def show
  end

  # GET /admin/aboutus/new
  def new
    @aboutu = Aboutu.new
  end

  # GET /admin/aboutus/1/edit
  def edit
  end

  # POST /admin/aboutus
  # POST /admin/aboutus.json
  def create
    @aboutu = Aboutu.new(aboutu_params)

    respond_to do |format|
      if @aboutu.save
        format.html { redirect_to @aboutu, notice: 'Aboutu was successfully created.' }
        format.json { render action: 'show', status: :created, location: @aboutu }
      else
        format.html { render action: 'new' }
        format.json { render json: @aboutu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/aboutus/1
  # PATCH/PUT /admin/aboutus/1.json
  def update
    respond_to do |format|
      if @aboutu.update(aboutu_params)
        format.html { redirect_to @aboutu, notice: 'Aboutu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @aboutu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/aboutus/1
  # DELETE /admin/aboutus/1.json
  def destroy
    @aboutu.destroy
    respond_to do |format|
      format.html { redirect_to aboutus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aboutu
      @aboutu = Aboutu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aboutu_params
      params.require(:aboutu).permit(:content)
    end
end
