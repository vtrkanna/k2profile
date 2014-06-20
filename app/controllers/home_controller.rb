class HomeController < ApplicationController


  def home_main
    render :template => "home/home", :layout => "profile"
  end
end
