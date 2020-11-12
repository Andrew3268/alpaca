class ScategoriesController < ApplicationController
  before_action :set_scategory, only: [:show, :edit, :update, :destroy]

  # GET /scategories
  # GET /scategories.json
  def index
    @scategories = Scategory.all
  end

  # GET /scategories/1
  # GET /scategories/1.json
  def show
  end

  # GET /scategories/new
  def new
    @scategory = Scategory.new
  end

  # GET /scategories/1/edit
  def edit
  end

  # POST /scategories
  # POST /scategories.json
  def create
    @scategory = Scategory.new(scategory_params)

    respond_to do |format|
      if @scategory.save
        format.html { redirect_to @scategory, notice: 'Scategory was successfully created.' }
        format.json { render :show, status: :created, location: @scategory }
      else
        format.html { render :new }
        format.json { render json: @scategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scategories/1
  # PATCH/PUT /scategories/1.json
  def update
    respond_to do |format|
      if @scategory.update(scategory_params)
        format.html { redirect_to @scategory, notice: 'Scategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @scategory }
      else
        format.html { render :edit }
        format.json { render json: @scategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scategories/1
  # DELETE /scategories/1.json
  def destroy
    @scategory.destroy
    respond_to do |format|
      format.html { redirect_to scategories_url, notice: 'Scategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scategory
      @scategory = Scategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scategory_params
      params.require(:scategory).permit(:name, :description, :display_in_navbar)
    end
end
