class HomeController < ApplicationController
  def index
    puts current_or_guest_user.id
  end
end
