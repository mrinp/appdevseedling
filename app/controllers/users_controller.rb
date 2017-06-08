class UsersController < ApplicationController
  def index
    @users = User.all

    render("users/index.html.erb")
  end
  def show
    @users = User.find(params[:username])

    render("users/show.html.erb")
  end

    end
