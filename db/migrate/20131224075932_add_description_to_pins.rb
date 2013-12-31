class AddDescriptionToPins < ActiveRecord::Migration
  def change
    add_column :pins, :description, :text
    add_column :pins, :daily, :integer
    add_column :pins, :weekly, :integer
    add_column :pins, :monthly, :integer
    add_column :pins, :advance, :integer
  end
end
