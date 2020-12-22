class FeaturedsController < ApplicationController
  before_action :set_featured, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :hashtags]

  # GET /featureds
  # GET /featureds.json
  def index
    @featureds = Featured.all.order("created_at DESC")
  end

  # GET /featureds/1
  # GET /featureds/1.json
  def show
    @featureds = Featured.all.order("created_at DESC")
  end

  def hashtags
    tag = Tag.find_by(name: params[:name])
    @featureds = tag.featureds
  end

  # GET /featureds/new
  def new
    @featured = current_user.featureds.build
  end

  # GET /featureds/1/edit
  def edit
  end

  # POST /featureds
  # POST /featureds.json
  def create
    @featured = current_user.featureds.build(featured_params)

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
      params.require(:featured).permit(:fimage, :ff_title, :ff_link, :ff_source, :ff_hashtag, :ff_description, :ff_is_price, :ff_was_price, :ff_pct, 
                                       :ff_spare_01, :ff_spare_02, :ff_spare_03, :ff_spare_04, :ff_spare_05, :ff_spare_06)
    end
end



