class Client < ApplicationRecord
  has_many :contacts, dependent: :destroy
end
