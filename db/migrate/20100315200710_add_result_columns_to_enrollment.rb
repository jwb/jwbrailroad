class AddResultColumnsToEnrollment < ActiveRecord::Migration
  def self.up
    add_column :enrollments, :response_code, :string
    add_column :enrollments, :response_description, :string
    add_column :enrollments, :cardholder, :int
    add_column :enrollments, :dda_routing_number, :string
    add_column :enrollments, :dda_account_number, :string
  end

  def self.down
    remove_column :enrollments, :dda_account_number
    remove_column :enrollments, :dda_routing_number
    remove_column :enrollments, :cardholder
    remove_column :enrollments, :response_description
    remove_column :enrollments, :response_code
  end
end
