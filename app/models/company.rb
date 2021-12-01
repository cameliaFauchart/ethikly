class Company < ApplicationRecord
  has_many :offers, dependent: :delete_all
end
