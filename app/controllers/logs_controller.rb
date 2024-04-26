class LogsController < ApplicationController
  def index
    @logs = Log.order(created_at: :asc)
  end
end
