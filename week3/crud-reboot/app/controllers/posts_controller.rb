class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:post_id])
    if @post.nil?
      redirect_to "/"
    end
  end

  def new
  end

  def create
    @title = params[:title]
    @content = params[:content]
    unless @title.nil? && @content.nil?
      Post.create(title: @title, content: @content)
      redirect_to "/"
    else
      return "입력을 다시해주세요."
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    if @post.nil?
      redirect_to "/posts/"+ params[:post_id] + "/edit"
    end

  end

  def update
    @title = params[:title]
    @content = params[:content]
    unless @title.nil? && @content.nil?
      post = Post.find(params[:post_id])
      post.update(title: @title, content: @content)
      redirect_to "/posts/" + params[:post_id]
    else
      return "입력을 다시해주세요."
    end
  end

  def delete
      @post = Post.delete(params[:post_id])
      redirect_to "/"
  end
end
