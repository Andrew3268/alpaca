class HfcategoriesController < ApplicationController
  before_action :set_hfcategory, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /hfcategories
  # GET /hfcategories.json
  def index
    @hfcategories = Hfcategory.all
  end

  # GET /hfcategories/1
  # GET /hfcategories/1.json
  def show
  end

  # GET /hfcategories/new
  def new
    @hfcategory = current_user.hfcategories.build
  end

  # GET /hfcategories/1/edit
  def edit
  end

  # POST /hfcategories
  # POST /hfcategories.json
  def create
    @hfcategory = current_user.hfcategories.build(hfcategory_params)

    respond_to do |format|
      if @hfcategory.save
        format.html { redirect_to @hfcategory, notice: 'Hfcategory was successfully created.' }
        format.json { render :show, status: :created, location: @hfcategory }
      else
        format.html { render :new }
        format.json { render json: @hfcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hfcategories/1
  # PATCH/PUT /hfcategories/1.json
  def update
    respond_to do |format|
      if @hfcategory.update(hfcategory_params)
        format.html { redirect_to @hfcategory, notice: 'Hfcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @hfcategory }
      else
        format.html { render :edit }
        format.json { render json: @hfcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hfcategories/1
  # DELETE /hfcategories/1.json
  def destroy
    @hfcategory.destroy
    respond_to do |format|
      format.html { redirect_to hfcategories_url, notice: 'Hfcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hfcategory
      @hfcategory = Hfcategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hfcategory_params
      params.require(:hfcategory).permit(:name, :description, :display_in_navbar)
    end
end
