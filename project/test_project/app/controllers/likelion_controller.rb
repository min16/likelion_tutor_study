class LikelionController < ApplicationController


  def hello
    @my_name = "minji"
  end

  def write

  end

  def create
    user = User.new
    user.name = params[:username]
    user.save
    redirect_to "/likelion/read"
  end

  def read
    @user_list = User.all
  end

end
