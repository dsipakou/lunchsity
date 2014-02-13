class Admin::LunchesController < ApplicationController
  before_action :set_lunch, only: [:show, :edit, :update, :destroy]
  layout "backend"

  # GET /admin/lunches
  # GET /admin/lunches.json
  def index
    @lunches = Lunch.all
  end

  # GET /admin/lunches/1
  # GET /admin/lunches/1.json
  def show
  end

  # GET /admin/lunches/new
  def new
    @lunch = Lunch.new
  end

  # GET /admin/lunches/1/edit
  def edit
  end

  # POST /admin/lunches
  # POST /admin/lunches.json
  def create
    @lunch = Lunch.new(lunch_params)
    respond_to do |format|
      if @lunch.save
        unless params[:lunch][:file].nil?
          upload_file = params[:lunch][:file]
          FileUtils.rm_rf(Dir.glob(File.join('public', 'uploads', 'lunch', "*.*")))
          File.open(Rails.root.join('public', 'uploads', 'lunch',
            upload_file.original_filename), 'wb') do |file|
              file.write(upload_file.read)
          end
        end            
          format.html { redirect_to @lunch, notice: 'Lunch was successfully created.' }
          format.json { render action: 'show', status: :created, location: @lunch }
      else
        format.html { render action: 'new' }
        format.json { render json: @lunch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/lunches/1
  # PATCH/PUT /admin/lunches/1.json
  def update
    respond_to do |format|
      if @lunch.update(lunch_params)
        unless params[:lunch][:file].nil?
          upload_file = params[:lunch][:file]
          FileUtils.rm_rf(Dir.glob(File.join('public', 'uploads', 'lunch', "*.*")))
          File.open(Rails.root.join('public', 'uploads', 'lunch',
            upload_file.original_filename), 'wb') do |file|
              file.write(upload_file.read)
          end
        end 
        format.html { redirect_to @lunch, notice: 'Lunch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lunch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/lunches/1
  # DELETE /admin/lunches/1.json
  def destroy
    @lunch.destroy
    respond_to do |format|
      format.html { redirect_to lunches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lunch
      @lunch = Lunch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lunch_params
      params.require(:lunch).permit(:content)
    end
end
