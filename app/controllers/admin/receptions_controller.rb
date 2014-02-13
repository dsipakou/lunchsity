class Admin::ReceptionsController < ApplicationController
  before_action :set_reception, only: [:show, :edit, :update, :destroy]
  layout "backend"

  # GET /admin/receptions
  # GET /admin/receptions.json
  def index
    @receptions = Reception.all
  end

  # GET /admin/receptions/1
  # GET /admin/receptions/1.json
  def show
  end

  # GET /admin/receptions/new
  def new
    @reception = Reception.new
  end

  # GET /admin/receptions/1/edit
  def edit
  end

  # POST /admin/receptions
  # POST /admin/receptions.json
  def create
    @reception = Reception.new(reception_params)

    respond_to do |format|
      if @reception.save
        unless params[:reception][:file].nil?
          upload_file = params[:reception][:file]
          FileUtils.rm_rf(Dir.glob(File.join('public', 'uploads', 'lunch', "*.*")))
          File.open(Rails.root.join('public', 'uploads', 'recept',
            upload_file.original_filename), 'wb') do |file|
              file.write(upload_file.read)
          end
        end 
        format.html { redirect_to @reception, notice: 'Reception was successfully created.' }
        format.json { render action: 'show', status: :created, location: @reception }
      else
        format.html { render action: 'new' }
        format.json { render json: @reception.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/receptions/1
  # PATCH/PUT /admin/receptions/1.json
  def update
    respond_to do |format|
      if @reception.update(reception_params)
        unless params[:reception][:file].nil?
          upload_file = params[:reception][:file]
          FileUtils.rm_rf(Dir.glob(File.join('public', 'uploads', 'lunch', "*.*")))
          File.open(Rails.root.join('public', 'uploads', 'recept',
            upload_file.original_filename), 'wb') do |file|
              file.write(upload_file.read)
          end
        end 

        format.html { redirect_to @reception, notice: 'Reception was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reception.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/receptions/1
  # DELETE /admin/receptions/1.json
  def destroy
    @reception.destroy
    respond_to do |format|
      format.html { redirect_to receptions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reception
      @reception = Reception.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reception_params
      params.require(:reception).permit(:content)
    end
end
