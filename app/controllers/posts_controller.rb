class PostsController < ApplicationController

  def index
    if request.query_parameters[:q].present?
      search = request.query_parameters[:q][:title_or_body_contains]
      @posts = Post.where('title LIKE :search OR body LIKE :search', search: "%#{search}%");
    else
      @posts = Post.all
    end
  end

  def show
    @post = Post.find(params[:id])
  end

end
