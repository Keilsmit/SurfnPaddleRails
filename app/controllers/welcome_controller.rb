class WelcomeController < ApplicationController

  def index
    @post = Post.all.max_by {|post| post.created_at}
    @bottom_post = Post.all.reject {|post| post == @post }.sort_by { |post| post.created_at }
  end

  def show
    @post = Post.find(params[:id].to_i)
    @bottom_post = Post.all.reject {|post| post == @post }.sort_by { |post| post.created_at }
  end


end
