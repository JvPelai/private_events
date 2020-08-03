class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string      :location
      t.date        :date
      t.string      :title
      t.text        :description
      t.timestamps null: false
    end
  end
end
