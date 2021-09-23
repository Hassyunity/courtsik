class AdminController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "1232"

  def index
    
  end
end
