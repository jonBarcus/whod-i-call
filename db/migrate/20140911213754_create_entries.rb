class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.date      :date
      t.string    :contact_name
      t.string    :organization_name
      t.text      :notes
      t.integer   :communication_type_id
      t.timestamps
    end
  end
end
