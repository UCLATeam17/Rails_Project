class PaymentNotification
  include Mongoid::Document
  field :params, type: String
  field :status, type: String
  field :transaction_id, type: String
  field :cart_id, type: Integer

belongs_to :cart
  serialize :params
  after_create :mark_cart_as_purchased

  private
    def mark_cart_as_purchased
    if status == "Completed"
      cart.update_attributes(:purchased_ar => Time.now)
    end
end 
end
