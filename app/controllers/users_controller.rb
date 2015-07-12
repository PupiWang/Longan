class UsersController < ApplicationController
  def new

  end
  def create
    render plain: params[:user].inspect
  end
  def index

  end
end
