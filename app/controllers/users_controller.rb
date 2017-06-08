class UsersController < ApplicationController
  def index
    @users = Users.all
    @this_user = User.find(params[:id])


    render("users/index.html.erb")
  end
  def show
    @user = Users.find(params[:id])

    render("users/show.html.erb")
  end

  def sign_in
    render("users/sign_in.html.erb")
  end
    end
