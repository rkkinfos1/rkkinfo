class CreateLoginInfos < ActiveRecord::Migration
  def change
    create_table :login_infos do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
