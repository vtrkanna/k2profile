class Countries < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :countries, id: :uuid do |t|
      t.string :name
      t.uuid :created_by
      t.uuid :updated_by
      t.timestamps
    end
  end
end
