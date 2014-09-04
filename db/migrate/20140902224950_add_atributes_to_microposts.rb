class AddAtributesToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :like, :integer, default: 0
  end
end
