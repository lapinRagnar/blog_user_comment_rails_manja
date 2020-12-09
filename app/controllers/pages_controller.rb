class PagesController < ApplicationController
  def index
    @posts = Post.all
  end

  def nouveaute
  end

  def membre
  end

  def apropos
  end
end
