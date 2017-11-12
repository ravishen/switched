class PagesController < ApplicationController
  def home
  end

  def index
    if user_signed_in?&&Check.all.size==current_user.id
    @checks=Check.find(current_user.id)
    @users=User.all
    else
    @checks=Check.new()
    @users=User.all

    end
  end
end