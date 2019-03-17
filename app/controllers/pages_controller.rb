class PagesController < ApplicationController
  def profile
    if Like.first == nil then
      @likes = Like.new(total: 0)
      @likes.save
      @total_like = Like.first
    else
      @total_like = Like.first
      @isLike = ActiveRecord::Type::Boolean.new.cast(cookies[:isLike])
    end
  end

  def art
  end
end
