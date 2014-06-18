class Users < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :users, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.string :user_name
      t.string :title
      t.string :email_id
      t.string :phone_no
      t.string :address_1
      t.string :address_2
      t.string :address_3
      t.uuid :city_id
      t.uuid :region_id
      t.uuid :country_id
      t.string :remember_me_key
      t.string :password
      t.string :reset_password_code
      t.uuid :user_type_id
      t.string :active
      t.uuid :status_id
      t.uuid :o_uid
      t.string :session_token
      t.uuid :site_id
      t.uuid :note_id
      t.uuid :created_by
      t.uuid :updated_by
      t.uuid :social_hub_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :users,[:full_name, :email_id, :city_id, :country_id, :user_type_id, :user_name], name: "index_users"
  end
end
