class PostsController < ApplicationController
	def index
		@posts=Post.all.order('created_at DESK')
	end
	def show
    @post=Post.find(params[:id])
    @posts=Post.order("created_at desk").limit(4).offset(1)
    end
    private 
    def  post_params
    	params.require(:post).permit(:title,:body)
    end

    	
    end
