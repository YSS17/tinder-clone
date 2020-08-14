class BrowseController < ApplicationController

    def browse
      like_account_ids = Like.where(account_id: current_account.id).map(&:liked_account_id)
      like_account_ids <<  current_account.id
      @users = Account.where.not(id: like_account_ids)
      @matches = current_account.matches
    end

    def approve
      account_id = params[:id]
      # user swipes right
      logger.debug "user id for matching is #{account_id}"

      # create likes for users
      new_like = Like.new(liked_account_id: account_id)
      new_like.account_id = current_account.id

      if new_like.save
        # check if user already likes us back
        existing_like = Like.where(account_id: account_id,liked_account_id: current_account.id).count
        @they_like_us = existing_like > 0
      else
        # issue saving like - return a warning massage
      end
    end

    def decline
      #user swipes left
    end

    def conversation
      id = params[:id]
      @profile = Account.find(id)


      if @profile.present?
        respond_to do |format|
          format.js{
            render partial: "browse/conversation"
          }
      end
    end
  end
end
