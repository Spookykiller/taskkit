class CreateTaskLists < ActiveRecord::Migration
  def change
    create_table :task_lists do |t|
      t.string :title
      t.string :client_email

      t.timestamps null: false
    end
  end
end
