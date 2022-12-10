class CommentsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_not_found_response

    def index
        if params[:champion_id]
            champion = Champion.find(params[:champion_id])
            comments = champion.comments
          else
            comments = Comment.all
          end
          render json: comments   
      end

    def show
        comment = Comment.find(params[:id])
        render json: comment
     end

    # POST /comments
    def create
        @comment = Comment.create!(comment_params)
        if @comment
          render json: @comment, status: :created
        else
          render json: { error: "'User does not exist'" }, status: :unprocessable_entity
        end
       
      end
  
    # PATCH/PUT /comments/:id
    def update
        @user = find_comment
        @user.update(comment_params)
        render json: @user, status: :created
    end
  
    # DELETE /comments/:id
    def destroy
        @user = find_comment
        @user.destroy
        head :no_content
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def find_comment
        @comment = Comment.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def comment_params
        params.require(:comment).permit(:title, :description, :champion_id, :user_id)
      end

      def render_not_found_response
        render json: { error: "Comment not found" }, status: :not_found
      end
end
