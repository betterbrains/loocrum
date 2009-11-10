class CreateContas < ActiveRecord::Migration
  def self.up
    create_table :contas do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :contas
  end
end
