json.extract! user, :id, :name, :lastname, :birthday, :email, :password, :gender_id, :document_type_id, :documentNumber, :phone, :cellphone, :civicoins, :blood_type_id, :address, :nationality, :secondaryNationality, :pictureLarge, :pictureMedium, :pictureThumbnail, :created_at, :updated_at
json.url user_url(user, format: :json)
