class TextsController < ApplicationController
  def index
    select_sql = "texts.*, read_progresses.user_id = #{current_user.id} AS read"
    @texts = Text.includes(:user).left_join_read_texts(current_user.id).select(select_sql).order(:created_at).filter_by(params[:genre])
  end

  def show
    @text = Text.find(params[:id])
  end
end
