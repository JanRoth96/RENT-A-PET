class ChangeStatusToBeSelectionOfStrings < ActiveRecord::Migration[7.0]
  def up
    change_column :bookings, :status, :string
  end

  def down
    change_column :bookings, :status, :boolean
  end
end
