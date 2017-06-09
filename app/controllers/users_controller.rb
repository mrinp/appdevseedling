class UsersController < ApplicationController

  def index

    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])

    render("users/show.html.erb")
  end

  def sign_in
    render("users/sign_in.html.erb")
  end
end
