json.extract! tickt, :id, :name, :reference, :price, :created_at, :updated_at
json.url tickt_url(tickt, format: :json)
