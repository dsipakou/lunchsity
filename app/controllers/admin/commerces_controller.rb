class Admin::CommercesController < ApplicationController
  before_action :set_commerce, only: [:show, :edit, :update, :destroy]

  layout "backend"

  # GET /admin/commerces
  # GET /admin/commerces.json
  def index
    @commerces = Commerce.all
  end

  # GET /admin/commerces/1
  # GET /admin/commerces/1.json
  def show
  end

  # GET /admin/commerces/new
  def new
    @commerce = Commerce.new
  end

  # GET /admin/commerces/1/edit
  def edit
  end

  # POST /admin/commerces
  # POST /admin/commerces.json
  def create
    @commerce = Commerce.new(commerce_params)

    respond_to do |format|
      if @commerce.save
        format.html { redirect_to @commerce, notice: 'Commerce was successfully created.' }
        format.json { render action: 'show', status: :created, location: @commerce }
      else
        format.html { render action: 'new' }
        format.json { render json: @commerce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/commerces/1
  # PATCH/PUT /admin/commerces/1.json
  def update
    respond_to do |format|
      if @commerce.update(commerce_params)
        format.html { redirect_to @commerce, notice: 'Commerce was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @commerce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/commerces/1
  # DELETE /admin/commerces/1.json
  def destroy
    @commerce.destroy
    respond_to do |format|
      format.html { redirect_to commerces_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commerce
      @commerce = Commerce.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commerce_params
      params.require(:commerce).permit(:content)
    end
end