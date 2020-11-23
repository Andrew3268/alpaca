class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :hashtags]

  # GET /sales
  # GET /sales.json
  def index
    if params.has_key?(:scategory)
      @scategory = Scategory.find_by_name(params[:scategory])
      @sales = Sale.where(scategory: @scategory).order("created_at DESC")
    else
      @sales = Sale.all.all.order("created_at DESC")
    end
  end

  # GET /sales/1
  # GET /sales/1.json
  def show
    @relative = Sale.where(scategory_id: @sale.scategory_id)
  end

  # GET /sales/new
  def new
    @sale = current_user.sales.build
  end

  def hashtags
    tag = Tag.find_by(name: params[:name])
    @sales = tag.sales
  end

  # GET /sales/1/edit
  def edit
  end

  # POST /sales
  # POST /sales.json
  def create
    @sale = current_user.sales.build(sale_params)

    respond_to do |format|
      if @sale.save
        format.html { redirect_to @sale, notice: 'Sale was successfully created.' }
        format.json { render :show, status: :created, location: @sale }
      else
        format.html { render :new }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales/1
  # PATCH/PUT /sales/1.json
  def update
    respond_to do |format|
      if @sale.update(sale_params)
        format.html { redirect_to @sale, notice: 'Sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale }
      else
        format.html { render :edit }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales/1
  # DELETE /sales/1.json
  def destroy
    @sale.destroy
    respond_to do |format|
      format.html { redirect_to sales_url, notice: 'Sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sale_params
      params.require(:sale).permit(:s_title, :s_description, :scategory_id, :s_hashtag, :sale_image, :s_link, :s_source, :s_video,
                                   :s_is_price, :s_was_price, :s_spare_01, :s_spare_02, :s_spare_03)
    end
end




 