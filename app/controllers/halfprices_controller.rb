class HalfpricesController < ApplicationController
  before_action :set_halfprice, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /halfprices
  # GET /halfprices.json
  def index
    if params.has_key?(:hfcategory)
      @hfcategory = Hfcategory.find_by_name(params[:hfcategory])
      @pagy, @halfprices = pagy(Halfprice.where(hfcategory: @hfcategory).order("created_at DESC"), items: 100)
    else
      @pagy, @halfprices = pagy(Halfprice.all.order("created_at DESC"), items: 100)
    end
  end

  # GET /halfprices/1
  # GET /halfprices/1.json
  def show
  end

  # GET /halfprices/new
  def new
    @halfprice = current_user.halfprices.build
  end

  # GET /halfprices/1/edit
  def edit
  end

  # POST /halfprices
  # POST /halfprices.json
  def create
    @halfprice = current_user.halfprices.build(halfprice_params)

    respond_to do |format|
      if @halfprice.save
        format.html { redirect_to @halfprice, notice: 'Halfprice was successfully created.' }
        format.json { render :show, status: :created, location: @halfprice }
      else
        format.html { render :new }
        format.json { render json: @halfprice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /halfprices/1
  # PATCH/PUT /halfprices/1.json
  def update
    respond_to do |format|
      if @halfprice.update(halfprice_params)
        format.html { redirect_to @halfprice, notice: 'Halfprice was successfully updated.' }
        format.json { render :show, status: :ok, location: @halfprice }
      else
        format.html { render :edit }
        format.json { render json: @halfprice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /halfprices/1
  # DELETE /halfprices/1.json
  def destroy
    @halfprice.destroy
    respond_to do |format|
      format.html { redirect_to halfprices_url, notice: 'Halfprice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_halfprice
      @halfprice = Halfprice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def halfprice_params
      params.require(:halfprice).permit(:hf_title, :hf_body, :hfcategory_id, :hf_link, :hf_image)
    end
end
