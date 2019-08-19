class Log < ApplicationRecord
  belongs_to :user, :foreign_key => 'buyer_id'
  belongs_to :user, :foreign_key => 'seller_id'
  belongs_to :asset
end
