class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    if params.has_key?(:category)
      @category = Category.find_by_name(params[:category])
      @posts = Post.where(category: @category).order("created_at DESC")
    else
      @posts = Post.all.order("created_at DESC")
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @relative = Post.where(category_id: @post.category_id)
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def guide
    if params.has_key?(:guide)
      @guide = Guide.find_by_name(params[:guide])
      @posts = Post.where(guide: @guide).order("created_at DESC")
    else
      @posts = Post.all.order("created_at DESC")
    end
  end

  def shop
    if params.has_key?(:shop)
      @shop = Shop.find_by_name(params[:shop])
      @posts = Post.where(shop: @shop).order("created_at DESC")
    else
      @posts = Post.all.order("created_at DESC")
    end
  end




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :link, :category_id, :shop_id, :guide_id, :post_image, :source, :video, :image_toggle,
                                   :description, :is_price, :was_price, :pct, :p_spare_01)
    end
end

      
  