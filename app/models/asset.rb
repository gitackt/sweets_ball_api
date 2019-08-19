class Asset < ApplicationRecord
  has_many :charts
  has_many :orders
end
