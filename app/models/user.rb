class User < ApplicationRecord
  belongs_to :gender
  belongs_to :document_type
  belongs_to :blood_type
end
