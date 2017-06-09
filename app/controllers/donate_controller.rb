class DonateController < ApplicationController
  

  def index
  	@current_user = current_user
  end

  def about
  end

  def sign_in
  end

  def select_food
    respond_to do |format|
      format.js
    end
  end
  
 def select_friend
    respond_to do |format|
      format.js
    end
  end

  def throw_food
    respond_to do |format|
      format.js
    end
  end
  
  def confirm_throw
    respond_to do |format|
      format.js
    end
  end

  def donation
  end
end
