require 'securerandom'

class PagesController < ApplicationController
  def home
  end

  def index
    if user_signed_in?&&Check.all.size>=current_user.id
      @checks2=Check.find(current_user.id)

      if(@checks2.hashkey.nil?)
      @checks2.hashkey=SecureRandom.hex(13)
      @checks2.save

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

  def setup

      send_data(
          "#{Rails.root}/public/Switched.ino",
          filename: "Switched.ino",
          type: "application/ino"
      )

  end


end