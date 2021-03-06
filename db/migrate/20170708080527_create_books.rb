class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.boolean :agreement
      t.boolean :status, default: false
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
