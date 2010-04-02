class AddEmailMd5ToUser < ActiveRecord::Migration
  def self.up
    add_column  User.table_name, :email_md5, :string
  end

  def self.down
    remove_column User.table_name, :email_md5
  end
end
