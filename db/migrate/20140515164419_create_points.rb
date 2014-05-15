class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :saved_points
      t.timestamps
    end
  end
end
