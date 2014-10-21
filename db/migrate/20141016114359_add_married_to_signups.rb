class AddMarriedToSignups < ActiveRecord::Migration
  def change
    add_column :signups, :married, :boolean
  end
end
