class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :email
      t.string   :password
      t.boolean  :admin, default: false
      t.string   :authentication_token
    end
  end
end
