class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :user_type, null:false, default:1
      t.string :username
      t.string :email
      t.integer :matric_marks
      t.integer :user_status, null: false, default: 1
      t.string :name

      t.timestamps
    end
  end
end