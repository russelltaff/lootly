class LootController < ApplicationController
  before_filter :logged_in?, only:[:index]
  
  def index
    
  end
  
end
