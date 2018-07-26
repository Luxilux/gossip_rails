class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.text :content_message
      t.datetime :date
      t.references :recipient, index: true
      t.references :sender, index: true
      t.timestamps
    end
  end
end
