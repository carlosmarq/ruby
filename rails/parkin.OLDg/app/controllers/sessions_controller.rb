class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: session_params[:email])
    if user.authenticate(sesion_params[:password])
    else
      redirect_to new_session_path
  end



  private

  def session_params
    params.require(:session).permit(:email, :password)
  end

end
