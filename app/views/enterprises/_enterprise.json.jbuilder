json.extract! enterprise, :id, :name, :nit, :address, :phone, :website, :facebook_id, :instagram_id, :latitude, :longitude, :description, :enterprise_sector_id, :isPublic, :logo, :coverPage, :created_at, :updated_at
json.url enterprise_url(enterprise, format: :json)
