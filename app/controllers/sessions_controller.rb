class SessionsController < ApplicationController
  def new
  end

  def create
    auth_hash = request.env['omniauth.auth']

    if session[:user_id]
      # Means our user is signed in. Add the authorization to the user
      User.find(session[:user_id]).add_provider(auth_hash)
      #render :text => "#{auth_hash["info"]["name"]}, you can now login using #{auth_hash["provider"].capitalize} too!"
      redirect_to topics_path
    else
      # Log him in or sign him up
      auth = Authorization.find_or_create(auth_hash)
      # Create the session
      session[:user_id] = auth.user.id

      render :text => "Welcome #{auth.user.name}!"
    end
  end
  
  def destroy
    session[:user_id] = nil
    render :text => "You've logged out!"
  end

  def failure
    render :text => "Sorry, but you didn't allow access to our app!"
  end
end
