require "HTTParty"


class HomeController < ApplicationController

  def index
    result = 'https://api.github.com/users'
    
    response= HTTParty.get(result)
    json = JSON.parse(response.body)
    @users = json
  end
  
  
end
