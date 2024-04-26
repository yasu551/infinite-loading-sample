class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs do |t|
      t.string :content, null: false, default: ''

      t.timestamps
    end
  end
end
