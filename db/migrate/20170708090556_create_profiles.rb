class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :admin, default: false
      t.boolean :status, default: false
      t.string :image

      t.timestamps
    end
  end
end
