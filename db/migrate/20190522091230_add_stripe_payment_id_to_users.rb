class AddStripePaymentIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :stripe_payment_id, :string
  end
end
