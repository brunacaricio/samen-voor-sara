class AddNoteToRequests < ActiveRecord::Migration[7.1]
  def change
    add_column :requests, :note, :text
  end
end
