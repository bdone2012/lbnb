class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :url
      t.integer :point, :default => 5
      t.string :password_digest
      t.timestamps
    end
  end
end
