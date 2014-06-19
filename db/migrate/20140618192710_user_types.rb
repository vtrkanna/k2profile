class UserTypes < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :user_types, id: :uuid do |t|
      t.string :name
      t.uuid :created_by
      t.uuid :updated_by
      t.timestamp
    end
  end
end
