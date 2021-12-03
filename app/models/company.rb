class Company < ApplicationRecord
  has_many :offers, dependent: :delete_all
  has_one_attached :image
end
