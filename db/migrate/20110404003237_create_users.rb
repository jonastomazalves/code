class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username,            :null => false
      t.string :crypted_password,    :null => false
      t.string :password_salt,       :null => false
      t.string :persistence_token,   :null => false

      t.timestamps
    end
    
    # Adds automatically admin account
    User.create(:username => 'admin', :password => '4dm1n', :password_confirmation => '4dm1n', :created_at => Date.today, :updated_at => Date.today)
  end

  def self.down
    drop_table :users
  end
end
