class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :text

      t.timestamps null: false
    end
  end
end
