class SessionsController < ApplicationController
  def new


  end


  def create
 
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
     session[:user_id] = user.id
     flash[:success]= "you have succesfully login"
     redirect_to user_path(user)
    else
     flash.now[:danger] = "there is something wrong with your log in details"
     render 'new'
    end
  end

  def destroy
 session[:user_id] = nil
 flash[:success]= "you have succesfully logout"
 redirect_to root_path
  end
end
 