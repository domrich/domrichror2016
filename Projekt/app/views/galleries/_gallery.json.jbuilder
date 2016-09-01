json.extract! gallery, :id, :title, :image, :description, :created_at, :updated_at
json.url gallery_url(gallery, format: :json)