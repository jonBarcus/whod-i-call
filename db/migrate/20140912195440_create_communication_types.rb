class CreateCommunicationTypes < ActiveRecord::Migration
  def change
    create_table :communication_types do |t|
      t.string      :name
      t.timestamps
    end
  end
end
