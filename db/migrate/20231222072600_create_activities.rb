class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities, id: false  do |t|
      t.string :id
      t.string :name
      t.integer :difficulty

      t.timestamps
    end
  end
end
