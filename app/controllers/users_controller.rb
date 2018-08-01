class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.create(username: params['username'], bio: params['bio'])
    if (@user.valid?)
      redirect_to "/users/#{@user.username}"
    else
      redirect_to "/error"
    end
  end

  def show
  end
end
