class PostsController < ApplicationController
  before_action :authenticate_user! , :only[:new, :create, :edit, :update, :destroy]
  def new
    @group = Group.find(group[:id])
    @post = Post
  end


  def create
    @group = Group.find(group[:id])
    @post = Post.new(post_params)
    @post.group = @group

    @post.user = current_user
    if @post.save
      rediect_to group_path(group)
    else
      render :new
    end
  end

  private

  def


end
