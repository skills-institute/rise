class AddDiscountCodeToArchievedUserPayments < ActiveRecord::Migration[5.1]
  def change
    add_column :archieved_user_payments, :discount_code, :string
  end
end
