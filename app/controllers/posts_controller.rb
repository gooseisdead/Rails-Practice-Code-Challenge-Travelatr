class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy]

    def index
        @posts = Post.all 
    end

    def show    
    end

    def new
        @post = Post.new
    end

    def update
        @post.update(post_params)
        redirect_to post_path(@post)
    end

    def create
        @post = Post.create(post_params)
        redirect_to post_path(@post)
    end

    def edit
    end

    def destroy
        redirect_to posts_path
    end



    private

    def post_params
        params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    end

    def find_post
        @post = Post.find(params[:id])
    end
end


end
