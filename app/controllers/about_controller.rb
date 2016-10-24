class AboutController < ApplicationController

  def info
    @post = Post.all.max_by {|post| post.created_at}
    @bottom_post = Post.all.reject {|post| post == @post }.sort_by { |post| post.created_at }
  end

end
