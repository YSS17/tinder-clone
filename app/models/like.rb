class Like < ApplicationRecord
  validates_uniqueness_of :like_account_id, scope: :account_id
end
