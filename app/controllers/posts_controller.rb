class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post=Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(
      title: params[:title],
      category: params[:category],
      content: params[:content]
      )
    if @post.save
      redirect_to posts_path(@post.id)
    else
      render new_post_path
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.category = params[:category]
    @post.content = params[:content]

    @post.save
    redirect_to posts_path
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to posts_path
  end


end
