class PostsController < ApplicationController
  def contact
  end
  def like
    @like = Like.first
    @like.total = @like.total + 1
    @like.save

    @total_like = Like.first
    @isLike = true

    cookies[:isLike] = { value:@isLike, expires:3.months.from_now }
  end
  def dislike
    @dislike = Like.first
    @dislike.total = @dislike.total - 1
    @dislike.save

    @total_like = Like.first
    @isLike = false

    cookies[:isLike] = { value:@isLike, expires:3.months.from_now }
  end
end
