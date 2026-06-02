class CreateRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :requests do |t|
      t.string :title
      t.text :description
      t.date :date
      t.string :start_time
      t.string :end_time
      t.string :location
      t.string :volunteer_name
      t.text :volunteer_note

      t.timestamps
    end
  end
end
