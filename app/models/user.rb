class User < ApplicationRecord
  has_many :portfolios
  has_many :orders
end
