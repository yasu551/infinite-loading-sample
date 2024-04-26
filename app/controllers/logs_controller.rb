class LogsController < ApplicationController
  def index
    @lower_id = params[:lower_id].present? ? params[:lower_id].to_i : nil
    @logs = Log.fetch(lower_id: @lower_id).order(created_at: :asc)
    @next_lower_id = @logs.first&.id
  end
end
