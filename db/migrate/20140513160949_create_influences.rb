class CreateInfluences < ActiveRecord::Migration
  def change
    create_table :influences do |t|
      t.string :person
      t.string :job_title
      t.references :user
      t.timestamps
    end
  end
end
