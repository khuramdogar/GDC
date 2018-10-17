class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.references :project, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
