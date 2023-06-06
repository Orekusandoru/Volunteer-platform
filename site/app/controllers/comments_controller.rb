class CommentsController < ApplicationController
    def create
        
        @request = Request.find(params[:request_id])
        
        @comment = @request.comments.build(comment_params)
        @comment.user = current_user
        if @comment.save
          redirect_to @request, notice: 'Comment was successfully created.'
        else
          render 'requests/show'
        end
      end
     def update
        @comment = Comment.find(params[:id])
        if @comment.update(comment_params)
          redirect_to @comment.request
        else
          render 'edit'
        end
      end

     

      def destroy
        @request = Request.find(params[:request_id])
        @comment = @request.comments.find(params[:id])
        @comment.destroy
        redirect_to request_url(@request), notice: "Comment was successfully deleted."
      end

      private

      def comment_params
        params.require(:comment).permit(:body)
      end
end
