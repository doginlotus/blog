class CreateDailyUpdates < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_updates do |t|
      t.date :date
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
