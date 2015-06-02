module Api
  class PostsController < ApiController

    def index
      @posts = Post.all
    end

    def show
      @post = Post.find(params[:id])
    end

    def create
      @post = Post.new(post_params)

      if @post.save
        render_created
      else
        render_errors(@post)
      end
    end

    def update
      @post = Post.find(params[:id])

      if @post.update(post_params)
        render_updated
      else
        render_errors(@post)
      end
    end

    def destroy
      @post = Post.find(params[:id])

      if @post.destroy
        render_destroyed
      else
        render_errors(@post)
      end
    end

    private

    def post_params
      params.require(:post).permit(
        :title,
        :excerpt,
        :body,
        :image_url,
      )
    end

  end
end
