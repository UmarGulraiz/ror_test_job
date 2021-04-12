class ChargebeeController < ApplicationController
  def index
    @tomorrow_date = Date.tomorrow
  end

  def update_subscription
    # ChargebeeWorker.perfrom_async(params[:subscription_id], params[:subscription_start_date])
  end
end
