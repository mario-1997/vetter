class UsersListController < ApplicationController
  before_action :authenticate_user!
  def index
    @users_list = User.all
  end

end