class CreatePersonalinfos < ActiveRecord::Migration
  def change
    create_table :personalinfos do |t|
      t.integer :signup_id
      t.string :fbid

      t.timestamps
    end
  end
end
