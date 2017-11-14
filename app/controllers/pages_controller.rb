require 'securerandom'

class PagesController < ApplicationController
  def home
  end

  def index
    if user_signed_in?&&Check.all.size>=current_user.id
      @checks=Check.find(current_user.id)

      if(@checks.hashkey.nil?)
      @checks.hashkey=SecureRandom.hex(13)
      @checks.save

    end
    end

    if user_signed_in?&&Check.all.size>=current_user.id
    @checks=Check.find(current_user.id)
    @users=User.all

    else
    @checks=Check.new()
    @users=User.all

    end
  end
end