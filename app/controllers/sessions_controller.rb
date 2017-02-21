class SessionsController < ActionController::Base

def create
    @user = User.from_omniauth(request.env['omniauth.auth'])
    session[:user_id] = @user.id
    flash[:success] = "Welcome, #{@user.name}!"
    puts "Welcome"
   redirect_to root_path
end

def destroy
  reset_session
  redirect_to root_path  
end

end