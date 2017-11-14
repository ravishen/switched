class Check < ApplicationRecord
  extend FriendlyId
  friendly_id :hashkey, use: :slugged
end
