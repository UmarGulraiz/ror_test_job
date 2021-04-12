# frozen_string_literal: true

module ChargebeeSubscription

  class StartDate < Base

    def self.update(subscription_id, start_date)
      new(subscription_id).update(start_date)
    end

    def update(start_date)
      ChargeBee::Subscription.update(subscription_id, {
        start_date: start_date
      })
    end
  end

end
