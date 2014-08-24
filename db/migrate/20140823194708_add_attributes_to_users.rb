class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :description, :string
    add_column :users, :phone, :string
    add_column :users, :bird_date, :datetime
    add_column :users, :gender, :boolean
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :skype, :string
  end
end
