class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
  end


  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def show
    @messages = Message.where("user_id = ?", params[:id])
    @messages.each do |k|
      tmp = ""
       k.message.split(" ").each do |i|
        if i.include? "#"
          i[0] = ''
          tmp = tmp + " <a href=/hashtags/" + i + ">#" + i + "</a>"
        else
          tmp = tmp + " " + i
        end
      end
    k.message = tmp
    end    
  end


private

  def set_user
    @user = User.find(params[:id])


  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end