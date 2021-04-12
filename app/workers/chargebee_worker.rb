class ChargebeeWorker < BaseWorker

  def perform(subscription_id, start_date)
    ChargeBee::Subscription.update(subscription_id, {
      start_date: start_date
    })
  end
end
