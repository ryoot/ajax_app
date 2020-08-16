class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
    def create
      Post.create(content: params[:content])
      redirect_to action: :index
    end
  end
end
