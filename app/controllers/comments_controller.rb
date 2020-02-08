class CommentsController < ApplicationController
  before_action :find_question, only: [:create, :destroy]


  # POST /comments
  # POST /comments.json
  def create
    @comment = @question.comments.create(comment_params)
    redirect_to question_path(@question)
  end


  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment =  @question.comments.find(params[:id])
    @comment.destroy
    redirect_to question_path(@question)
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:user_id, :body)
    end

    def find_question
      @question = Question.find(params[:question_id])
    end
end
