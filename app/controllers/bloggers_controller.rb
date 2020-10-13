class BloggersController < ApplicationController
    before_action :find_blogger, only: [:show, :edit, :update, :destroy]

    def index
        @bloggers = Blogger.all 
    end

    def show    
    end

    def new
        @blogger = Blogger.new
    end

    def update
        @blogger.update(blogger_params)
        redirect_to blogger_path(@blogger)
    end

    def create
        @blogger = Blogger.create(blogger_params)
        redirect_to blogger_path(@blogger)
    end

    def edit
    end

    def destroy
        redirect_to bloggers_path
    end



    private

    def blogger_params
        params.require(:blogger).permit(:name, :age, :bio)
    end

    def find_blogger
        @blogger = Blogger.find(params[:id])
    end
end
