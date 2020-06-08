class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :shop]

  # GET /posts
  # GET /posts.json
  def index
    if params.has_key?(:category)
      @category = Category.find_by_name(params[:category])
      @pagy, @posts = pagy(Post.where(category: @category).order('RANDOM()'), items: 30)
    else
      @pagy, @posts = pagy(Post.all.order('RANDOM()'), items: 30)
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @relative = Post.where(shop_id: @post.shop_id)
  end

  # GET /posts/new
  def new
    @post = current_user.posts.build
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = current_user.posts.build(post_params)

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
      @pagy, @posts = pagy(Post.where(guide: @guide).order("created_at DESC"), items: 30)
    else
      @pagy, @posts = pagy(Post.all.order("created_at DESC"), items: 30)
    end
  end

  def shop
    if params.has_key?(:shop)
      @shop = Shop.find_by_name(params[:shop])
      @pagy, @posts = pagy(Post.where(shop: @shop).order("created_at DESC"), items: 30)
    else
      @pagy, @posts = pagy(Post.all.order("created_at DESC"), items: 30)
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

      
  