class CreateBlobs < ActiveRecord::Migration
  def change
    create_table :blobs do |t|
      t.string :key
      t.text :contents

      t.timestamps
    end
  end
end
