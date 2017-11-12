class PagesController < ApplicationController
  def home
  end

  def index
    if user_signed_in?
    @checks=Check.find(current_user.id)
    @users=User.all
    end
  end
end