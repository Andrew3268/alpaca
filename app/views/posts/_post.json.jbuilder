json.extract! post, :id, :title, :body, :category_id, :shop_id, :guide_id, :created_at, :updated_at
json.url post_url(post, format: :json)
