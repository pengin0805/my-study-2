class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :target_name,    null: false
      t.text :target_info,      null: false
      t.date :target_date,      null: false
      t.integer :study_time,    null: false
      t.references :user,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
