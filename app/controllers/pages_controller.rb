class PagesController < ApplicationController
  def profile
    @total_like = Like.first
    @isLike = ActiveRecord::Type::Boolean.new.cast(cookies[:isLike])
    p @isLike
  end

  def art
  end
end
