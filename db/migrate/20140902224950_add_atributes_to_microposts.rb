class AddAtributesToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :like, :integer
  end
end
