class UsersController < ApplicationController
  def index
    @users = User.order :name
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end
end
