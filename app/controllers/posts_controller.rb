class PostsController < ApplicationController
  def index

    # byebug

     @posts = Post.all
     
  end

  def new

    @post = Post.new

  end

  def create
# byebug
    @post = Post.new(post_params)

    if @post.save  

        redirect_to @post

     else

       render :new, status: :unprocessable_entity

    end

  end

  def show

    @post = Post.find(params[:id])

  end

  def edit

    @post = Post.find(params[:id])

  end

  def update

    @post = Post.find(params[:id])   

     if @post.update(post_params)

        redirect_to @post       
     else
        render :edit, status: :unprocessable_entity

    end

  end

  def delete

    @post = Post.find(params[:id])

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/posts'
  end

  private  

  def post_params    
    params.required(:post).permit(:comment,:file,:user_id)
  end

end
