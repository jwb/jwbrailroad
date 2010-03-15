class CreateEnrollments < ActiveRecord::Migration
  def self.up
    create_table :enrollments do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.string :gender
      t.string :zip
      t.string :state
      t.string :city
      t.string :address
      t.string :phone
      t.string :email
      t.string :social_security
      t.string :user_name
      t.string :password
      t.string :card_option

      t.timestamps
    end
  end

  def self.down
    drop_table :enrollments
  end
end
