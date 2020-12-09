class PagesController < ApplicationController

  before_action :tous_les_users

  def index
    @posts = Post.all
  end

  def nouveaute
  end

  def membre

  end

  def apropos
  end

  private

  def tous_les_users
    @users = User.all
  end



end
