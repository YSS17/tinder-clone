class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many_attached :images

  def matches
    # find accounts that current account liked
    liked_account_ids = Like.where(account_id: self.id).map(&:liked_account_id)
    # find accounts that liked current account
    likes_me_account_ids = Like.where(liked_account_id: self.id).map(&:account_id)
    # get paired accounts ids that liked each other
    matched_ids = liked_account_ids.select{|id| likes_me_account_ids.include?(id)}
    # find matched accounts
    Account.where(id: matched_ids)
  end
end
