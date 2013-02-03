class SessionsController < ApplicationController
  def new
    @session = Session.new
  end

  def create
    @session = Session.new params[:session]
    if @session.valid?
      @user = User.find_by_name(@session.name).try(:authenticate, @session.password)
      if @user
        redirect_to users_path, notice: "Welcome back"
      else
        redirect_to new_sessions_path, alert: "Login failed"
      end
    else
      render action: "new"
    end
  end
end
