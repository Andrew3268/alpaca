class FeaturedsController < ApplicationController
  before_action :set_featured, only: [:show, :edit, :update, :destroy]

  # GET /featureds
  # GET /featureds.json
  def index
    @featureds = Featured.all.order("created_at DESC").limit(30)
  end

  # GET /featureds/1
  # GET /featureds/1.json
  def show
    @featureds = Featured.all.order("created_at DESC").limit(6)
  end

  # GET /featureds/new
  def new
    @featured = Featured.new
  end

  # GET /featureds/1/edit
  def edit
  end

  # POST /featureds
  # POST /featureds.json
  def create
    @featured = Featured.new(featured_params)

    respond_to do |format|
      if @featured.save
        format.html { redirect_to @featured, notice: 'Featured was successfully created.' }
        format.json { render :show, status: :created, location: @featured }
      else
        format.html { render :new }
        format.json { render json: @featured.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /featureds/1
  # PATCH/PUT /featureds/1.json
  def update
    respond_to do |format|
      if @featured.update(featured_params)
        format.html { redirect_to @featured, notice: 'Featured was successfully updated.' }
        format.json { render :show, status: :ok, location: @featured }
      else
        format.html { render :edit }
        format.json { render json: @featured.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /featureds/1
  # DELETE /featureds/1.json
  def destroy
    @featured.destroy
    respond_to do |format|
      format.html { redirect_to featureds_url, notice: 'Featured was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_featured
      @featured = Featured.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def featured_params
      params.require(:featured).permit(:ftitle, :furl, :fimage, :f_image_01, :f_image_02, :f_image_03, :f_image_04, :f_image_05,
                                       :f_image_06, :f_subtitle_01, :f_subtitle_02, :f_subtitle_03, :f_subtitle_04, :f_subtitle_05,
                                       :f_subtitle_06, :f_description_01, :f_description_02, :f_description_03, :f_description_04, :f_description_05,
                                       :f_description_06, :f_link_01, :f_link_02, :f_link_03, :f_link_04, :f_link_05, :f_link_06)
    end
end


