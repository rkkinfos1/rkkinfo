class AddImageToEmployees < ActiveRecord::Migration
  def self.up
    change_table :employees do |t|
      t.attachment :cv
    end
  end

  def self.down
    drop_attached_file :employees, :cv
  end
end
