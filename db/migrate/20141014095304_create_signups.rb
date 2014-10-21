class CreateSignups < ActiveRecord::Migration
    after_save :generateusername

  def generateusername
    @username=Signup.select(:firstname)
  end
  def change
    create_table :signups do |t|
      t.string :firstname
      t.string :lastname
      t.string :password
      t.string :emailid
      t.text :phonenumber
      t.string :gender
      t.string :qualification
      t.string :language
      t.text :address

      t.timestamps
    end
  end
end
