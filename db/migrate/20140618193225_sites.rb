class Sites < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :sites, id: :uuid do |t|
      t.string :name
      t.string :short_name
      t.string :url
      t.string :status
      t.boolean :active
      t.string :layout
      t.uuid :created_by
      t.uuid :updated_by
      t.timestamps
    end
  end
end
