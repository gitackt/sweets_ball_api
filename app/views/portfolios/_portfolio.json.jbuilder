json.extract! portfolio, :id, :amount, :user_id, :asset_id, :created_at, :updated_at
json.url portfolio_url(portfolio, format: :json)
